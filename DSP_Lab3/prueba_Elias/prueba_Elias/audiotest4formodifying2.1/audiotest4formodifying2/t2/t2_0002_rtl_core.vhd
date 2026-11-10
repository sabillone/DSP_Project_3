-- ------------------------------------------------------------------------- 
-- High Level Design Compiler for Intel(R) FPGAs Version 22.1std (Release Build #917)
-- Quartus Prime development tool and MATLAB/Simulink Interface
-- 
-- Legal Notice: Copyright 2023 Intel Corporation.  All rights reserved.
-- Your use of  Intel Corporation's design tools,  logic functions and other
-- software and  tools, and its AMPP partner logic functions, and any output
-- files any  of the foregoing (including  device programming  or simulation
-- files), and  any associated  documentation  or information  are expressly
-- subject  to the terms and  conditions of the  Intel FPGA Software License
-- Agreement, Intel MegaCore Function License Agreement, or other applicable
-- license agreement,  including,  without limitation,  that your use is for
-- the  sole  purpose of  programming  logic devices  manufactured by  Intel
-- and  sold by Intel  or its authorized  distributors. Please refer  to the
-- applicable agreement for further details.
-- ---------------------------------------------------------------------------

-- VHDL created from t2_0002_rtl_core
-- VHDL created on Sun Oct 25 10:25:47 2026


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

entity t2_0002_rtl_core is
    port (
        xIn_v : in std_logic_vector(0 downto 0);  -- sfix1
        xIn_c : in std_logic_vector(7 downto 0);  -- sfix8
        xIn_0 : in std_logic_vector(23 downto 0);  -- sfix24
        xOut_v : out std_logic_vector(0 downto 0);  -- ufix1
        xOut_c : out std_logic_vector(7 downto 0);  -- ufix8
        xOut_0 : out std_logic_vector(53 downto 0);  -- sfix54
        clk : in std_logic;
        areset : in std_logic
    );
end t2_0002_rtl_core;

architecture normal of t2_0002_rtl_core is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal d_u0_m0_wo0_compute_q_19_q : STD_LOGIC_VECTOR (0 downto 0);
    signal d_u0_m0_wo0_wi0_r0_phasedelay0_q_14_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr1_q : STD_LOGIC_VECTOR (23 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr1_q_13_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr2_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr3_q : STD_LOGIC_VECTOR (23 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr3_q_12_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr4_q : STD_LOGIC_VECTOR (23 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr4_q_12_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr5_q : STD_LOGIC_VECTOR (23 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr5_q_11_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr6_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr7_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr8_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr9_q : STD_LOGIC_VECTOR (23 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr9_q_11_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr10_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr11_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr12_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr13_q : STD_LOGIC_VECTOR (23 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr13_q_11_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr14_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr15_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr16_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr17_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr18_q : STD_LOGIC_VECTOR (23 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr18_q_11_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr19_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr20_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr21_q : STD_LOGIC_VECTOR (23 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr21_q_11_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr22_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr23_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr24_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr25_q : STD_LOGIC_VECTOR (23 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr25_q_11_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr26_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr27_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr28_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr29_q : STD_LOGIC_VECTOR (23 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr29_q_11_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr30_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr31_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr32_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr33_q : STD_LOGIC_VECTOR (23 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr33_q_11_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr34_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr35_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr36_q : STD_LOGIC_VECTOR (23 downto 0);
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
    signal u0_m0_wo0_mtree_mult1_36_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_im3_b0 : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_im3_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_36_im3_q : STD_LOGIC_VECTOR (24 downto 0);
    signal d_u0_m0_wo0_mtree_mult1_36_bjB10_q_16_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_im11_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_im11_b0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_im11_s1 : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_im11_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_36_im11_q : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_result_add_0_0_a : STD_LOGIC_VECTOR (42 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_result_add_0_0_b : STD_LOGIC_VECTOR (42 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_result_add_0_0_o : STD_LOGIC_VECTOR (42 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_result_add_0_0_q : STD_LOGIC_VECTOR (42 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_result_add_0_1_a : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_result_add_0_1_b : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_result_add_0_1_o : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_result_add_0_1_q : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_result_add_1_0_a : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_result_add_1_0_b : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_result_add_1_0_o : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_result_add_1_0_q : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_35_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_35_im3_b0 : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_35_im3_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_35_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_35_im3_q : STD_LOGIC_VECTOR (24 downto 0);
    signal d_u0_m0_wo0_mtree_mult1_35_bjB10_q_14_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_35_im11_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_35_im11_b0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_35_im11_s1 : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_mtree_mult1_35_im11_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_35_im11_q : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_mtree_mult1_35_result_add_0_0_a : STD_LOGIC_VECTOR (42 downto 0);
    signal u0_m0_wo0_mtree_mult1_35_result_add_0_0_b : STD_LOGIC_VECTOR (42 downto 0);
    signal u0_m0_wo0_mtree_mult1_35_result_add_0_0_o : STD_LOGIC_VECTOR (42 downto 0);
    signal u0_m0_wo0_mtree_mult1_35_result_add_0_0_q : STD_LOGIC_VECTOR (42 downto 0);
    signal u0_m0_wo0_mtree_mult1_35_result_add_0_1_a : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_35_result_add_0_1_b : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_35_result_add_0_1_o : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_35_result_add_0_1_q : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_35_result_add_1_0_a : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_35_result_add_1_0_b : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_35_result_add_1_0_o : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_35_result_add_1_0_q : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_im3_b0 : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_im3_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_33_im3_q : STD_LOGIC_VECTOR (24 downto 0);
    signal d_u0_m0_wo0_mtree_mult1_33_bjB10_q_13_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_im11_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_im11_b0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_im11_s1 : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_im11_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_33_im11_q : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_result_add_0_0_a : STD_LOGIC_VECTOR (42 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_result_add_0_0_b : STD_LOGIC_VECTOR (42 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_result_add_0_0_o : STD_LOGIC_VECTOR (42 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_result_add_0_0_q : STD_LOGIC_VECTOR (42 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_result_add_0_1_a : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_result_add_0_1_b : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_result_add_0_1_o : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_result_add_0_1_q : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_result_add_1_0_a : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_result_add_1_0_b : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_result_add_1_0_o : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_result_add_1_0_q : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_im3_b0 : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_im3_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_32_im3_q : STD_LOGIC_VECTOR (24 downto 0);
    signal d_u0_m0_wo0_mtree_mult1_32_bjB10_q_13_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_im11_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_im11_b0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_im11_s1 : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_im11_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_32_im11_q : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_result_add_0_0_a : STD_LOGIC_VECTOR (42 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_result_add_0_0_b : STD_LOGIC_VECTOR (42 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_result_add_0_0_o : STD_LOGIC_VECTOR (42 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_result_add_0_0_q : STD_LOGIC_VECTOR (42 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_result_add_0_1_a : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_result_add_0_1_b : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_result_add_0_1_o : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_result_add_0_1_q : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_result_add_1_0_a : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_result_add_1_0_b : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_result_add_1_0_o : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_result_add_1_0_q : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_im3_b0 : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_im3_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_31_im3_q : STD_LOGIC_VECTOR (24 downto 0);
    signal d_u0_m0_wo0_mtree_mult1_31_bjB10_q_12_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_im11_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_im11_b0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_im11_s1 : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_im11_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_31_im11_q : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_result_add_0_0_a : STD_LOGIC_VECTOR (42 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_result_add_0_0_b : STD_LOGIC_VECTOR (42 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_result_add_0_0_o : STD_LOGIC_VECTOR (42 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_result_add_0_0_q : STD_LOGIC_VECTOR (42 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_result_add_0_1_a : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_result_add_0_1_b : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_result_add_0_1_o : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_result_add_0_1_q : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_result_add_1_0_a : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_result_add_1_0_b : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_result_add_1_0_o : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_result_add_1_0_q : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_im3_b0 : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_im3_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_29_im3_q : STD_LOGIC_VECTOR (24 downto 0);
    signal d_u0_m0_wo0_mtree_mult1_29_bjB10_q_11_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_im11_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_im11_b0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_im11_s1 : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_im11_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_29_im11_q : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_result_add_0_0_a : STD_LOGIC_VECTOR (42 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_result_add_0_0_b : STD_LOGIC_VECTOR (42 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_result_add_0_0_o : STD_LOGIC_VECTOR (42 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_result_add_0_0_q : STD_LOGIC_VECTOR (42 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_result_add_0_1_a : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_result_add_0_1_b : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_result_add_0_1_o : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_result_add_0_1_q : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_result_add_1_0_a : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_result_add_1_0_b : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_result_add_1_0_o : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_result_add_1_0_q : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_im3_b0 : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_im3_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_28_im3_q : STD_LOGIC_VECTOR (24 downto 0);
    signal d_u0_m0_wo0_mtree_mult1_28_bjB10_q_12_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_im11_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_im11_b0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_im11_s1 : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_im11_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_28_im11_q : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_result_add_0_0_a : STD_LOGIC_VECTOR (42 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_result_add_0_0_b : STD_LOGIC_VECTOR (42 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_result_add_0_0_o : STD_LOGIC_VECTOR (42 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_result_add_0_0_q : STD_LOGIC_VECTOR (42 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_result_add_0_1_a : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_result_add_0_1_b : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_result_add_0_1_o : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_result_add_0_1_q : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_result_add_1_0_a : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_result_add_1_0_b : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_result_add_1_0_o : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_result_add_1_0_q : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_im3_b0 : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_im3_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_27_im3_q : STD_LOGIC_VECTOR (24 downto 0);
    signal d_u0_m0_wo0_mtree_mult1_27_bjB10_q_12_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_im11_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_im11_b0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_im11_s1 : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_im11_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_27_im11_q : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_result_add_0_0_a : STD_LOGIC_VECTOR (42 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_result_add_0_0_b : STD_LOGIC_VECTOR (42 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_result_add_0_0_o : STD_LOGIC_VECTOR (42 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_result_add_0_0_q : STD_LOGIC_VECTOR (42 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_result_add_0_1_a : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_result_add_0_1_b : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_result_add_0_1_o : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_result_add_0_1_q : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_result_add_1_0_a : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_result_add_1_0_b : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_result_add_1_0_o : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_result_add_1_0_q : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_im3_b0 : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_im3_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_25_im3_q : STD_LOGIC_VECTOR (24 downto 0);
    signal d_u0_m0_wo0_mtree_mult1_25_bjB10_q_11_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_im11_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_im11_b0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_im11_s1 : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_im11_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_25_im11_q : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_result_add_0_0_a : STD_LOGIC_VECTOR (42 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_result_add_0_0_b : STD_LOGIC_VECTOR (42 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_result_add_0_0_o : STD_LOGIC_VECTOR (42 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_result_add_0_0_q : STD_LOGIC_VECTOR (42 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_result_add_0_1_a : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_result_add_0_1_b : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_result_add_0_1_o : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_result_add_0_1_q : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_result_add_1_0_a : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_result_add_1_0_b : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_result_add_1_0_o : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_result_add_1_0_q : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_im3_b0 : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_im3_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_24_im3_q : STD_LOGIC_VECTOR (24 downto 0);
    signal d_u0_m0_wo0_mtree_mult1_24_bjB10_q_11_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_im11_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_im11_b0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_im11_s1 : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_im11_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_24_im11_q : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_result_add_0_0_a : STD_LOGIC_VECTOR (42 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_result_add_0_0_b : STD_LOGIC_VECTOR (42 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_result_add_0_0_o : STD_LOGIC_VECTOR (42 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_result_add_0_0_q : STD_LOGIC_VECTOR (42 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_result_add_0_1_a : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_result_add_0_1_b : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_result_add_0_1_o : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_result_add_0_1_q : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_result_add_1_0_a : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_result_add_1_0_b : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_result_add_1_0_o : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_result_add_1_0_q : STD_LOGIC_VECTOR (47 downto 0);
    signal d_u0_m0_wo0_mtree_mult1_23_bjB10_q_12_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_result_add_0_0_a : STD_LOGIC_VECTOR (42 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_result_add_0_0_b : STD_LOGIC_VECTOR (42 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_result_add_0_0_o : STD_LOGIC_VECTOR (42 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_result_add_0_0_q : STD_LOGIC_VECTOR (42 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_result_add_0_1_a : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_result_add_0_1_b : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_result_add_0_1_o : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_result_add_0_1_q : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_result_add_1_0_a : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_result_add_1_0_b : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_result_add_1_0_o : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_result_add_1_0_q : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_im3_b0 : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_im3_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_21_im3_q : STD_LOGIC_VECTOR (24 downto 0);
    signal d_u0_m0_wo0_mtree_mult1_21_bjB10_q_11_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_im11_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_im11_b0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_im11_s1 : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_im11_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_21_im11_q : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_result_add_0_0_a : STD_LOGIC_VECTOR (42 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_result_add_0_0_b : STD_LOGIC_VECTOR (42 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_result_add_0_0_o : STD_LOGIC_VECTOR (42 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_result_add_0_0_q : STD_LOGIC_VECTOR (42 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_result_add_0_1_a : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_result_add_0_1_b : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_result_add_0_1_o : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_result_add_0_1_q : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_result_add_1_0_a : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_result_add_1_0_b : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_result_add_1_0_o : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_result_add_1_0_q : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_im3_b0 : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_im3_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_20_im3_q : STD_LOGIC_VECTOR (24 downto 0);
    signal d_u0_m0_wo0_mtree_mult1_20_bjB10_q_11_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_im11_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_im11_b0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_im11_s1 : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_im11_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_20_im11_q : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_result_add_0_0_a : STD_LOGIC_VECTOR (42 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_result_add_0_0_b : STD_LOGIC_VECTOR (42 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_result_add_0_0_o : STD_LOGIC_VECTOR (42 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_result_add_0_0_q : STD_LOGIC_VECTOR (42 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_result_add_0_1_a : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_result_add_0_1_b : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_result_add_0_1_o : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_result_add_0_1_q : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_result_add_1_0_a : STD_LOGIC_VECTOR (49 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_result_add_1_0_b : STD_LOGIC_VECTOR (49 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_result_add_1_0_o : STD_LOGIC_VECTOR (49 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_result_add_1_0_q : STD_LOGIC_VECTOR (49 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_im3_b0 : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_im3_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_19_im3_q : STD_LOGIC_VECTOR (24 downto 0);
    signal d_u0_m0_wo0_mtree_mult1_19_bjB10_q_11_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_im11_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_im11_b0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_im11_s1 : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_im11_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_19_im11_q : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_result_add_0_0_a : STD_LOGIC_VECTOR (42 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_result_add_0_0_b : STD_LOGIC_VECTOR (42 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_result_add_0_0_o : STD_LOGIC_VECTOR (42 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_result_add_0_0_q : STD_LOGIC_VECTOR (42 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_result_add_0_1_a : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_result_add_0_1_b : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_result_add_0_1_o : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_result_add_0_1_q : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_result_add_1_0_a : STD_LOGIC_VECTOR (49 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_result_add_1_0_b : STD_LOGIC_VECTOR (49 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_result_add_1_0_o : STD_LOGIC_VECTOR (49 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_result_add_1_0_q : STD_LOGIC_VECTOR (49 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_result_add_0_0_a : STD_LOGIC_VECTOR (42 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_result_add_0_0_b : STD_LOGIC_VECTOR (42 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_result_add_0_0_o : STD_LOGIC_VECTOR (42 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_result_add_0_0_q : STD_LOGIC_VECTOR (42 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_result_add_0_1_a : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_result_add_0_1_b : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_result_add_0_1_o : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_result_add_0_1_q : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_result_add_1_0_a : STD_LOGIC_VECTOR (49 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_result_add_1_0_b : STD_LOGIC_VECTOR (49 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_result_add_1_0_o : STD_LOGIC_VECTOR (49 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_result_add_1_0_q : STD_LOGIC_VECTOR (49 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_im3_b0 : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_im3_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_17_im3_q : STD_LOGIC_VECTOR (24 downto 0);
    signal d_u0_m0_wo0_mtree_mult1_17_bjB10_q_11_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_im11_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_im11_b0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_im11_s1 : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_im11_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_17_im11_q : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_result_add_0_0_a : STD_LOGIC_VECTOR (42 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_result_add_0_0_b : STD_LOGIC_VECTOR (42 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_result_add_0_0_o : STD_LOGIC_VECTOR (42 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_result_add_0_0_q : STD_LOGIC_VECTOR (42 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_result_add_0_1_a : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_result_add_0_1_b : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_result_add_0_1_o : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_result_add_0_1_q : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_result_add_1_0_a : STD_LOGIC_VECTOR (49 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_result_add_1_0_b : STD_LOGIC_VECTOR (49 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_result_add_1_0_o : STD_LOGIC_VECTOR (49 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_result_add_1_0_q : STD_LOGIC_VECTOR (49 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_im3_b0 : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_im3_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_16_im3_q : STD_LOGIC_VECTOR (24 downto 0);
    signal d_u0_m0_wo0_mtree_mult1_16_bjB10_q_11_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_im11_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_im11_b0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_im11_s1 : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_im11_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_16_im11_q : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_result_add_0_0_a : STD_LOGIC_VECTOR (42 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_result_add_0_0_b : STD_LOGIC_VECTOR (42 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_result_add_0_0_o : STD_LOGIC_VECTOR (42 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_result_add_0_0_q : STD_LOGIC_VECTOR (42 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_result_add_0_1_a : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_result_add_0_1_b : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_result_add_0_1_o : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_result_add_0_1_q : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_result_add_1_0_a : STD_LOGIC_VECTOR (49 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_result_add_1_0_b : STD_LOGIC_VECTOR (49 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_result_add_1_0_o : STD_LOGIC_VECTOR (49 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_result_add_1_0_q : STD_LOGIC_VECTOR (49 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_im3_b0 : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_im3_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_15_im3_q : STD_LOGIC_VECTOR (24 downto 0);
    signal d_u0_m0_wo0_mtree_mult1_15_bjB10_q_12_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_im11_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_im11_b0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_im11_s1 : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_im11_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_15_im11_q : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_result_add_0_0_a : STD_LOGIC_VECTOR (42 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_result_add_0_0_b : STD_LOGIC_VECTOR (42 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_result_add_0_0_o : STD_LOGIC_VECTOR (42 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_result_add_0_0_q : STD_LOGIC_VECTOR (42 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_result_add_0_1_a : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_result_add_0_1_b : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_result_add_0_1_o : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_result_add_0_1_q : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_result_add_1_0_a : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_result_add_1_0_b : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_result_add_1_0_o : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_result_add_1_0_q : STD_LOGIC_VECTOR (48 downto 0);
    signal d_u0_m0_wo0_mtree_mult1_13_bjB10_q_11_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_result_add_0_0_a : STD_LOGIC_VECTOR (42 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_result_add_0_0_b : STD_LOGIC_VECTOR (42 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_result_add_0_0_o : STD_LOGIC_VECTOR (42 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_result_add_0_0_q : STD_LOGIC_VECTOR (42 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_result_add_0_1_a : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_result_add_0_1_b : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_result_add_0_1_o : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_result_add_0_1_q : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_result_add_1_0_a : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_result_add_1_0_b : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_result_add_1_0_o : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_result_add_1_0_q : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_im3_b0 : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_im3_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_12_im3_q : STD_LOGIC_VECTOR (24 downto 0);
    signal d_u0_m0_wo0_mtree_mult1_12_bjB10_q_11_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_im11_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_im11_b0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_im11_s1 : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_im11_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_12_im11_q : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_result_add_0_0_a : STD_LOGIC_VECTOR (42 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_result_add_0_0_b : STD_LOGIC_VECTOR (42 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_result_add_0_0_o : STD_LOGIC_VECTOR (42 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_result_add_0_0_q : STD_LOGIC_VECTOR (42 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_result_add_0_1_a : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_result_add_0_1_b : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_result_add_0_1_o : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_result_add_0_1_q : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_result_add_1_0_a : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_result_add_1_0_b : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_result_add_1_0_o : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_result_add_1_0_q : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_im3_b0 : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_im3_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_11_im3_q : STD_LOGIC_VECTOR (24 downto 0);
    signal d_u0_m0_wo0_mtree_mult1_11_bjB10_q_12_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_im11_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_im11_b0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_im11_s1 : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_im11_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_11_im11_q : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_result_add_0_0_a : STD_LOGIC_VECTOR (42 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_result_add_0_0_b : STD_LOGIC_VECTOR (42 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_result_add_0_0_o : STD_LOGIC_VECTOR (42 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_result_add_0_0_q : STD_LOGIC_VECTOR (42 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_result_add_0_1_a : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_result_add_0_1_b : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_result_add_0_1_o : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_result_add_0_1_q : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_result_add_1_0_a : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_result_add_1_0_b : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_result_add_1_0_o : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_result_add_1_0_q : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_im3_b0 : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_im3_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_9_im3_q : STD_LOGIC_VECTOR (24 downto 0);
    signal d_u0_m0_wo0_mtree_mult1_9_bjB10_q_11_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_im11_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_im11_b0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_im11_s1 : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_im11_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_9_im11_q : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_result_add_0_0_a : STD_LOGIC_VECTOR (42 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_result_add_0_0_b : STD_LOGIC_VECTOR (42 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_result_add_0_0_o : STD_LOGIC_VECTOR (42 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_result_add_0_0_q : STD_LOGIC_VECTOR (42 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_result_add_0_1_a : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_result_add_0_1_b : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_result_add_0_1_o : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_result_add_0_1_q : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_result_add_1_0_a : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_result_add_1_0_b : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_result_add_1_0_o : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_result_add_1_0_q : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_im3_b0 : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_im3_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_8_im3_q : STD_LOGIC_VECTOR (24 downto 0);
    signal d_u0_m0_wo0_mtree_mult1_8_bjB10_q_12_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_im11_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_im11_b0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_im11_s1 : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_im11_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_8_im11_q : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_result_add_0_0_a : STD_LOGIC_VECTOR (42 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_result_add_0_0_b : STD_LOGIC_VECTOR (42 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_result_add_0_0_o : STD_LOGIC_VECTOR (42 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_result_add_0_0_q : STD_LOGIC_VECTOR (42 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_result_add_0_1_a : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_result_add_0_1_b : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_result_add_0_1_o : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_result_add_0_1_q : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_result_add_1_0_a : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_result_add_1_0_b : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_result_add_1_0_o : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_result_add_1_0_q : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_im3_b0 : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_im3_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_7_im3_q : STD_LOGIC_VECTOR (24 downto 0);
    signal d_u0_m0_wo0_mtree_mult1_7_bjB10_q_12_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_im11_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_im11_b0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_im11_s1 : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_im11_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_7_im11_q : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_result_add_0_0_a : STD_LOGIC_VECTOR (42 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_result_add_0_0_b : STD_LOGIC_VECTOR (42 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_result_add_0_0_o : STD_LOGIC_VECTOR (42 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_result_add_0_0_q : STD_LOGIC_VECTOR (42 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_result_add_0_1_a : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_result_add_0_1_b : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_result_add_0_1_o : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_result_add_0_1_q : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_result_add_1_0_a : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_result_add_1_0_b : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_result_add_1_0_o : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_result_add_1_0_q : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_im3_b0 : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_im3_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_5_im3_q : STD_LOGIC_VECTOR (24 downto 0);
    signal d_u0_m0_wo0_mtree_mult1_5_bjB10_q_11_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_im11_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_im11_b0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_im11_s1 : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_im11_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_5_im11_q : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_result_add_0_0_a : STD_LOGIC_VECTOR (42 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_result_add_0_0_b : STD_LOGIC_VECTOR (42 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_result_add_0_0_o : STD_LOGIC_VECTOR (42 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_result_add_0_0_q : STD_LOGIC_VECTOR (42 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_result_add_0_1_a : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_result_add_0_1_b : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_result_add_0_1_o : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_result_add_0_1_q : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_result_add_1_0_a : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_result_add_1_0_b : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_result_add_1_0_o : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_result_add_1_0_q : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_im3_b0 : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_im3_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_4_im3_q : STD_LOGIC_VECTOR (24 downto 0);
    signal d_u0_m0_wo0_mtree_mult1_4_bjB10_q_11_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_im11_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_im11_b0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_im11_s1 : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_im11_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_4_im11_q : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_result_add_0_0_a : STD_LOGIC_VECTOR (42 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_result_add_0_0_b : STD_LOGIC_VECTOR (42 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_result_add_0_0_o : STD_LOGIC_VECTOR (42 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_result_add_0_0_q : STD_LOGIC_VECTOR (42 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_result_add_0_1_a : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_result_add_0_1_b : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_result_add_0_1_o : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_result_add_0_1_q : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_result_add_1_0_a : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_result_add_1_0_b : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_result_add_1_0_o : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_result_add_1_0_q : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_im3_b0 : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_im3_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_3_im3_q : STD_LOGIC_VECTOR (24 downto 0);
    signal d_u0_m0_wo0_mtree_mult1_3_bjB10_q_12_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_im11_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_im11_b0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_im11_s1 : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_im11_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_3_im11_q : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_result_add_0_0_a : STD_LOGIC_VECTOR (42 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_result_add_0_0_b : STD_LOGIC_VECTOR (42 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_result_add_0_0_o : STD_LOGIC_VECTOR (42 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_result_add_0_0_q : STD_LOGIC_VECTOR (42 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_result_add_0_1_a : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_result_add_0_1_b : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_result_add_0_1_o : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_result_add_0_1_q : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_result_add_1_0_a : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_result_add_1_0_b : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_result_add_1_0_o : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_result_add_1_0_q : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_im3_b0 : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_im3_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_1_im3_q : STD_LOGIC_VECTOR (24 downto 0);
    signal d_u0_m0_wo0_mtree_mult1_1_bjB10_q_11_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_im11_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_im11_b0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_im11_s1 : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_im11_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_1_im11_q : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_result_add_0_0_a : STD_LOGIC_VECTOR (42 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_result_add_0_0_b : STD_LOGIC_VECTOR (42 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_result_add_0_0_o : STD_LOGIC_VECTOR (42 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_result_add_0_0_q : STD_LOGIC_VECTOR (42 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_result_add_0_1_a : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_result_add_0_1_b : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_result_add_0_1_o : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_result_add_0_1_q : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_result_add_1_0_a : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_result_add_1_0_b : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_result_add_1_0_o : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_result_add_1_0_q : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_im3_b0 : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_im3_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_0_im3_q : STD_LOGIC_VECTOR (24 downto 0);
    signal d_u0_m0_wo0_mtree_mult1_0_bjB10_q_12_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_im11_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_im11_b0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_im11_s1 : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_im11_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_0_im11_q : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_result_add_0_0_a : STD_LOGIC_VECTOR (42 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_result_add_0_0_b : STD_LOGIC_VECTOR (42 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_result_add_0_0_o : STD_LOGIC_VECTOR (42 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_result_add_0_0_q : STD_LOGIC_VECTOR (42 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_result_add_0_1_a : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_result_add_0_1_b : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_result_add_0_1_o : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_result_add_0_1_q : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_result_add_1_0_a : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_result_add_1_0_b : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_result_add_1_0_o : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_result_add_1_0_q : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_35_im0_add_1_a : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_35_im0_add_1_b : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_35_im0_add_1_o : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_35_im0_add_1_q : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_35_im7_add_1_a : STD_LOGIC_VECTOR (19 downto 0);
    signal u0_m0_wo0_mtree_mult1_35_im7_add_1_b : STD_LOGIC_VECTOR (19 downto 0);
    signal u0_m0_wo0_mtree_mult1_35_im7_add_1_o : STD_LOGIC_VECTOR (19 downto 0);
    signal u0_m0_wo0_mtree_mult1_35_im7_add_1_q : STD_LOGIC_VECTOR (19 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_im0_sub_1_a : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_im0_sub_1_b : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_im0_sub_1_o : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_im0_sub_1_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_im7_sub_1_a : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_im7_sub_1_b : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_im7_sub_1_o : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_im7_sub_1_q : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_im0_sub_1_a : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_im0_sub_1_b : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_im0_sub_1_o : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_im0_sub_1_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_im7_sub_1_a : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_im7_sub_1_b : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_im7_sub_1_o : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_im7_sub_1_q : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_im0_sub_0_a : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_im0_sub_0_b : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_im0_sub_0_o : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_im0_sub_0_q : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_im0_sub_2_a : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_im0_sub_2_b : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_im0_sub_2_o : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_im0_sub_2_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_im7_sub_0_a : STD_LOGIC_VECTOR (18 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_im7_sub_0_b : STD_LOGIC_VECTOR (18 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_im7_sub_0_o : STD_LOGIC_VECTOR (18 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_im7_sub_0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_im7_sub_2_a : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_im7_sub_2_b : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_im7_sub_2_o : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_im7_sub_2_q : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_im0_add_1_a : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_im0_add_1_b : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_im0_add_1_o : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_im0_add_1_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_im7_add_1_a : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_im7_add_1_b : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_im7_add_1_o : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_im7_add_1_q : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_im0_add_1_a : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_im0_add_1_b : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_im0_add_1_o : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_im0_add_1_q : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_im7_add_1_a : STD_LOGIC_VECTOR (19 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_im7_add_1_b : STD_LOGIC_VECTOR (19 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_im7_add_1_o : STD_LOGIC_VECTOR (19 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_im7_add_1_q : STD_LOGIC_VECTOR (19 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_im0_sub_0_a : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_im0_sub_0_b : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_im0_sub_0_o : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_im0_sub_0_q : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_im0_sub_2_a : STD_LOGIC_VECTOR (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_im0_sub_2_b : STD_LOGIC_VECTOR (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_im0_sub_2_o : STD_LOGIC_VECTOR (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_im0_sub_2_q : STD_LOGIC_VECTOR (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_im7_sub_0_a : STD_LOGIC_VECTOR (18 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_im7_sub_0_b : STD_LOGIC_VECTOR (18 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_im7_sub_0_o : STD_LOGIC_VECTOR (18 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_im7_sub_0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_im7_sub_2_a : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_im7_sub_2_b : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_im7_sub_2_o : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_im7_sub_2_q : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_im0_sub_1_a : STD_LOGIC_VECTOR (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_im0_sub_1_b : STD_LOGIC_VECTOR (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_im0_sub_1_o : STD_LOGIC_VECTOR (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_im0_sub_1_q : STD_LOGIC_VECTOR (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_im7_sub_1_a : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_im7_sub_1_b : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_im7_sub_1_o : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_im7_sub_1_q : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_im0_sub_1_a : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_im0_sub_1_b : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_im0_sub_1_o : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_im0_sub_1_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_im3_sub_1_a : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_im3_sub_1_b : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_im3_sub_1_o : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_im3_sub_1_q : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_im3_sub_3_a : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_im3_sub_3_b : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_im3_sub_3_o : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_im3_sub_3_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_im3_add_5_a : STD_LOGIC_VECTOR (19 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_im3_add_5_b : STD_LOGIC_VECTOR (19 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_im3_add_5_o : STD_LOGIC_VECTOR (19 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_im3_add_5_q : STD_LOGIC_VECTOR (19 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_im7_sub_1_a : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_im7_sub_1_b : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_im7_sub_1_o : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_im7_sub_1_q : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_im11_sub_1_a : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_im11_sub_1_b : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_im11_sub_1_o : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_im11_sub_1_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_im11_sub_3_a : STD_LOGIC_VECTOR (22 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_im11_sub_3_b : STD_LOGIC_VECTOR (22 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_im11_sub_3_o : STD_LOGIC_VECTOR (22 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_im11_sub_3_q : STD_LOGIC_VECTOR (22 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_im11_add_5_a : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_im11_add_5_b : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_im11_add_5_o : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_im11_add_5_q : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_im0_add_1_a : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_im0_add_1_b : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_im0_add_1_o : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_im0_add_1_q : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_im0_add_3_a : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_im0_add_3_b : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_im0_add_3_o : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_im0_add_3_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_im7_add_1_a : STD_LOGIC_VECTOR (19 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_im7_add_1_b : STD_LOGIC_VECTOR (19 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_im7_add_1_o : STD_LOGIC_VECTOR (19 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_im7_add_1_q : STD_LOGIC_VECTOR (19 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_im7_add_3_a : STD_LOGIC_VECTOR (22 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_im7_add_3_b : STD_LOGIC_VECTOR (22 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_im7_add_3_o : STD_LOGIC_VECTOR (22 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_im7_add_3_q : STD_LOGIC_VECTOR (22 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_im0_add_1_a : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_im0_add_1_b : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_im0_add_1_o : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_im0_add_1_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_im7_add_1_a : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_im7_add_1_b : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_im7_add_1_o : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_im7_add_1_q : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_im0_sub_1_a : STD_LOGIC_VECTOR (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_im0_sub_1_b : STD_LOGIC_VECTOR (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_im0_sub_1_o : STD_LOGIC_VECTOR (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_im0_sub_1_q : STD_LOGIC_VECTOR (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_im0_add_3_a : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_im0_add_3_b : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_im0_add_3_o : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_im0_add_3_q : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_im7_sub_1_a : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_im7_sub_1_b : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_im7_sub_1_o : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_im7_sub_1_q : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_im7_add_3_a : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_im7_add_3_b : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_im7_add_3_o : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_im7_add_3_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_im0_sub_1_a : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_im0_sub_1_b : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_im0_sub_1_o : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_im0_sub_1_q : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_im3_sub_1_a : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_im3_sub_1_b : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_im3_sub_1_o : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_im3_sub_1_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_im7_sub_1_a : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_im7_sub_1_b : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_im7_sub_1_o : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_im7_sub_1_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_im11_sub_1_a : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_im11_sub_1_b : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_im11_sub_1_o : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_im11_sub_1_q : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_im0_sub_1_a : STD_LOGIC_VECTOR (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_im0_sub_1_b : STD_LOGIC_VECTOR (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_im0_sub_1_o : STD_LOGIC_VECTOR (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_im0_sub_1_q : STD_LOGIC_VECTOR (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_im0_add_3_a : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_im0_add_3_b : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_im0_add_3_o : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_im0_add_3_q : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_im7_sub_1_a : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_im7_sub_1_b : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_im7_sub_1_o : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_im7_sub_1_q : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_im7_add_3_a : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_im7_add_3_b : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_im7_add_3_o : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_im7_add_3_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_im0_add_1_a : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_im0_add_1_b : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_im0_add_1_o : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_im0_add_1_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_im7_add_1_a : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_im7_add_1_b : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_im7_add_1_o : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_im7_add_1_q : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_im0_add_1_a : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_im0_add_1_b : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_im0_add_1_o : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_im0_add_1_q : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_im0_add_3_a : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_im0_add_3_b : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_im0_add_3_o : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_im0_add_3_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_im7_add_1_a : STD_LOGIC_VECTOR (19 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_im7_add_1_b : STD_LOGIC_VECTOR (19 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_im7_add_1_o : STD_LOGIC_VECTOR (19 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_im7_add_1_q : STD_LOGIC_VECTOR (19 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_im7_add_3_a : STD_LOGIC_VECTOR (22 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_im7_add_3_b : STD_LOGIC_VECTOR (22 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_im7_add_3_o : STD_LOGIC_VECTOR (22 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_im7_add_3_q : STD_LOGIC_VECTOR (22 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_im0_sub_1_a : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_im0_sub_1_b : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_im0_sub_1_o : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_im0_sub_1_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_im3_sub_1_a : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_im3_sub_1_b : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_im3_sub_1_o : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_im3_sub_1_q : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_im3_sub_3_a : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_im3_sub_3_b : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_im3_sub_3_o : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_im3_sub_3_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_im3_add_5_a : STD_LOGIC_VECTOR (19 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_im3_add_5_b : STD_LOGIC_VECTOR (19 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_im3_add_5_o : STD_LOGIC_VECTOR (19 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_im3_add_5_q : STD_LOGIC_VECTOR (19 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_im7_sub_1_a : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_im7_sub_1_b : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_im7_sub_1_o : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_im7_sub_1_q : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_im11_sub_1_a : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_im11_sub_1_b : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_im11_sub_1_o : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_im11_sub_1_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_im11_sub_3_a : STD_LOGIC_VECTOR (22 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_im11_sub_3_b : STD_LOGIC_VECTOR (22 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_im11_sub_3_o : STD_LOGIC_VECTOR (22 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_im11_sub_3_q : STD_LOGIC_VECTOR (22 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_im11_add_5_a : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_im11_add_5_b : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_im11_add_5_o : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_im11_add_5_q : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_im0_sub_1_a : STD_LOGIC_VECTOR (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_im0_sub_1_b : STD_LOGIC_VECTOR (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_im0_sub_1_o : STD_LOGIC_VECTOR (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_im0_sub_1_q : STD_LOGIC_VECTOR (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_im7_sub_1_a : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_im7_sub_1_b : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_im7_sub_1_o : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_im7_sub_1_q : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_im0_sub_0_a : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_im0_sub_0_b : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_im0_sub_0_o : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_im0_sub_0_q : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_im0_sub_2_a : STD_LOGIC_VECTOR (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_im0_sub_2_b : STD_LOGIC_VECTOR (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_im0_sub_2_o : STD_LOGIC_VECTOR (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_im0_sub_2_q : STD_LOGIC_VECTOR (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_im7_sub_0_a : STD_LOGIC_VECTOR (18 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_im7_sub_0_b : STD_LOGIC_VECTOR (18 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_im7_sub_0_o : STD_LOGIC_VECTOR (18 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_im7_sub_0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_im7_sub_2_a : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_im7_sub_2_b : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_im7_sub_2_o : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_im7_sub_2_q : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_im0_add_1_a : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_im0_add_1_b : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_im0_add_1_o : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_im0_add_1_q : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_im7_add_1_a : STD_LOGIC_VECTOR (19 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_im7_add_1_b : STD_LOGIC_VECTOR (19 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_im7_add_1_o : STD_LOGIC_VECTOR (19 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_im7_add_1_q : STD_LOGIC_VECTOR (19 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_im0_add_1_a : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_im0_add_1_b : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_im0_add_1_o : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_im0_add_1_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_im7_add_1_a : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_im7_add_1_b : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_im7_add_1_o : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_im7_add_1_q : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_im0_sub_0_a : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_im0_sub_0_b : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_im0_sub_0_o : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_im0_sub_0_q : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_im0_sub_2_a : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_im0_sub_2_b : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_im0_sub_2_o : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_im0_sub_2_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_im7_sub_0_a : STD_LOGIC_VECTOR (18 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_im7_sub_0_b : STD_LOGIC_VECTOR (18 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_im7_sub_0_o : STD_LOGIC_VECTOR (18 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_im7_sub_0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_im7_sub_2_a : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_im7_sub_2_b : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_im7_sub_2_o : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_im7_sub_2_q : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_im0_sub_1_a : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_im0_sub_1_b : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_im0_sub_1_o : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_im0_sub_1_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_im7_sub_1_a : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_im7_sub_1_b : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_im7_sub_1_o : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_im7_sub_1_q : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_im0_sub_1_a : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_im0_sub_1_b : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_im0_sub_1_o : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_im0_sub_1_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_im7_sub_1_a : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_im7_sub_1_b : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_im7_sub_1_o : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_im7_sub_1_q : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_im0_add_1_a : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_im0_add_1_b : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_im0_add_1_o : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_im0_add_1_q : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_im7_add_1_a : STD_LOGIC_VECTOR (19 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_im7_add_1_b : STD_LOGIC_VECTOR (19 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_im7_add_1_o : STD_LOGIC_VECTOR (19 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_im7_add_1_q : STD_LOGIC_VECTOR (19 downto 0);
    signal d_u0_m0_wo0_mtree_mult1_36_bs2_merged_bit_select_b_16_q : STD_LOGIC_VECTOR (6 downto 0);
    signal d_u0_m0_wo0_mtree_mult1_35_bs2_merged_bit_select_b_14_q : STD_LOGIC_VECTOR (6 downto 0);
    signal d_u0_m0_wo0_mtree_mult1_33_bs2_merged_bit_select_b_13_q : STD_LOGIC_VECTOR (6 downto 0);
    signal d_u0_m0_wo0_mtree_mult1_32_bs2_merged_bit_select_b_13_q : STD_LOGIC_VECTOR (6 downto 0);
    signal d_u0_m0_wo0_mtree_mult1_31_bs2_merged_bit_select_b_12_q : STD_LOGIC_VECTOR (6 downto 0);
    signal d_u0_m0_wo0_mtree_mult1_29_bs2_merged_bit_select_b_11_q : STD_LOGIC_VECTOR (6 downto 0);
    signal d_u0_m0_wo0_mtree_mult1_28_bs2_merged_bit_select_b_12_q : STD_LOGIC_VECTOR (6 downto 0);
    signal d_u0_m0_wo0_mtree_mult1_27_bs2_merged_bit_select_b_12_q : STD_LOGIC_VECTOR (6 downto 0);
    signal d_u0_m0_wo0_mtree_mult1_25_bs2_merged_bit_select_b_11_q : STD_LOGIC_VECTOR (6 downto 0);
    signal d_u0_m0_wo0_mtree_mult1_24_bs2_merged_bit_select_b_11_q : STD_LOGIC_VECTOR (6 downto 0);
    signal d_u0_m0_wo0_mtree_mult1_23_bs2_merged_bit_select_b_12_q : STD_LOGIC_VECTOR (6 downto 0);
    signal d_u0_m0_wo0_mtree_mult1_21_bs2_merged_bit_select_b_11_q : STD_LOGIC_VECTOR (6 downto 0);
    signal d_u0_m0_wo0_mtree_mult1_20_bs2_merged_bit_select_b_11_q : STD_LOGIC_VECTOR (6 downto 0);
    signal d_u0_m0_wo0_mtree_mult1_19_bs2_merged_bit_select_b_11_q : STD_LOGIC_VECTOR (6 downto 0);
    signal d_u0_m0_wo0_mtree_mult1_17_bs2_merged_bit_select_b_11_q : STD_LOGIC_VECTOR (6 downto 0);
    signal d_u0_m0_wo0_mtree_mult1_16_bs2_merged_bit_select_b_11_q : STD_LOGIC_VECTOR (6 downto 0);
    signal d_u0_m0_wo0_mtree_mult1_15_bs2_merged_bit_select_b_12_q : STD_LOGIC_VECTOR (6 downto 0);
    signal d_u0_m0_wo0_mtree_mult1_13_bs2_merged_bit_select_b_11_q : STD_LOGIC_VECTOR (6 downto 0);
    signal d_u0_m0_wo0_mtree_mult1_12_bs2_merged_bit_select_b_11_q : STD_LOGIC_VECTOR (6 downto 0);
    signal d_u0_m0_wo0_mtree_mult1_11_bs2_merged_bit_select_b_12_q : STD_LOGIC_VECTOR (6 downto 0);
    signal d_u0_m0_wo0_mtree_mult1_9_bs2_merged_bit_select_b_11_q : STD_LOGIC_VECTOR (6 downto 0);
    signal d_u0_m0_wo0_mtree_mult1_8_bs2_merged_bit_select_b_12_q : STD_LOGIC_VECTOR (6 downto 0);
    signal d_u0_m0_wo0_mtree_mult1_7_bs2_merged_bit_select_b_12_q : STD_LOGIC_VECTOR (6 downto 0);
    signal d_u0_m0_wo0_mtree_mult1_5_bs2_merged_bit_select_b_11_q : STD_LOGIC_VECTOR (6 downto 0);
    signal d_u0_m0_wo0_mtree_mult1_4_bs2_merged_bit_select_b_11_q : STD_LOGIC_VECTOR (6 downto 0);
    signal d_u0_m0_wo0_mtree_mult1_3_bs2_merged_bit_select_b_12_q : STD_LOGIC_VECTOR (6 downto 0);
    signal d_u0_m0_wo0_mtree_mult1_1_bs2_merged_bit_select_b_11_q : STD_LOGIC_VECTOR (6 downto 0);
    signal d_u0_m0_wo0_mtree_mult1_0_bs2_merged_bit_select_b_12_q : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_bjA5_q_const_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_35_bjA5_q_const_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_bjA5_q_const_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_bjA5_q_const_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_bjA5_q_const_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_bjA5_q_const_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_bjA5_q_const_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_bjA5_q_const_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_bjA5_q_const_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_bjA5_q_const_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_bjA5_q_const_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_bjA5_q_const_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_bjA5_q_const_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_bs2_merged_bit_select_b : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_bs2_merged_bit_select_c : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_35_bs2_merged_bit_select_b : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_35_bs2_merged_bit_select_c : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_bs2_merged_bit_select_b : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_bs2_merged_bit_select_c : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_bs2_merged_bit_select_b : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_bs2_merged_bit_select_c : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_bs2_merged_bit_select_b : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_bs2_merged_bit_select_c : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_bs2_merged_bit_select_b : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_bs2_merged_bit_select_c : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_bs2_merged_bit_select_b : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_bs2_merged_bit_select_c : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_bs2_merged_bit_select_b : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_bs2_merged_bit_select_c : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_bs2_merged_bit_select_b : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_bs2_merged_bit_select_c : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_bs2_merged_bit_select_b : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_bs2_merged_bit_select_c : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_bs2_merged_bit_select_b : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_bs2_merged_bit_select_c : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_bs2_merged_bit_select_b : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_bs2_merged_bit_select_c : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_bs2_merged_bit_select_b : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_bs2_merged_bit_select_c : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_bs2_merged_bit_select_b : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_bs2_merged_bit_select_c : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_bs2_merged_bit_select_b : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_bs2_merged_bit_select_c : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_bs2_merged_bit_select_b : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_bs2_merged_bit_select_c : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_bs2_merged_bit_select_b : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_bs2_merged_bit_select_c : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_bs2_merged_bit_select_b : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_bs2_merged_bit_select_c : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_bs2_merged_bit_select_b : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_bs2_merged_bit_select_c : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_bs2_merged_bit_select_b : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_bs2_merged_bit_select_c : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_bs2_merged_bit_select_b : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_bs2_merged_bit_select_c : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_bs2_merged_bit_select_b : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_bs2_merged_bit_select_c : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_bs2_merged_bit_select_b : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_bs2_merged_bit_select_c : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_bs2_merged_bit_select_b : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_bs2_merged_bit_select_c : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_bs2_merged_bit_select_b : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_bs2_merged_bit_select_c : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_bs2_merged_bit_select_b : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_bs2_merged_bit_select_c : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_bs2_merged_bit_select_b : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_bs2_merged_bit_select_c : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_bs2_merged_bit_select_b : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_bs2_merged_bit_select_c : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_bs2_merged_bit_select_b : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_bs2_merged_bit_select_c : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_align_17_q : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_align_17_qint : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_im7_shift0_q : STD_LOGIC_VECTOR (19 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_im7_shift0_qint : STD_LOGIC_VECTOR (19 downto 0);
    signal u0_m0_wo0_mtree_mult1_35_align_17_q : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_35_align_17_qint : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_35_im7_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal u0_m0_wo0_mtree_mult1_35_im7_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_align_17_q : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_align_17_qint : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_im7_shift0_q : STD_LOGIC_VECTOR (19 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_im7_shift0_qint : STD_LOGIC_VECTOR (19 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_align_17_q : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_align_17_qint : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_im7_shift0_q : STD_LOGIC_VECTOR (19 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_im7_shift0_qint : STD_LOGIC_VECTOR (19 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_align_17_q : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_align_17_qint : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_im7_shift1_q : STD_LOGIC_VECTOR (19 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_im7_shift1_qint : STD_LOGIC_VECTOR (19 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_align_17_q : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_align_17_qint : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_im7_shift0_q : STD_LOGIC_VECTOR (19 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_im7_shift0_qint : STD_LOGIC_VECTOR (19 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_align_17_q : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_align_17_qint : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_im7_shift0_q : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_im7_shift0_qint : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_align_17_q : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_align_17_qint : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_im7_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_im7_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_align_17_q : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_align_17_qint : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_im7_shift1_q : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_im7_shift1_qint : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_align_17_q : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_align_17_qint : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_im7_shift0_q : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_im7_shift0_qint : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_im7_shift0_q : STD_LOGIC_VECTOR (19 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_im7_shift0_qint : STD_LOGIC_VECTOR (19 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_align_17_q : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_align_17_qint : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_im7_shift2_q : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_im7_shift2_qint : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_align_17_q : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_align_17_qint : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_im7_shift0_q : STD_LOGIC_VECTOR (19 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_im7_shift0_qint : STD_LOGIC_VECTOR (19 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_align_17_q : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_align_17_qint : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_im7_shift2_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_im7_shift2_qint : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_align_17_q : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_align_17_qint : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_im7_shift2_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_im7_shift2_qint : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_align_17_q : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_align_17_qint : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_im7_shift0_q : STD_LOGIC_VECTOR (19 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_im7_shift0_qint : STD_LOGIC_VECTOR (19 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_align_17_q : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_align_17_qint : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_im7_shift2_q : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_im7_shift2_qint : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_im7_shift0_q : STD_LOGIC_VECTOR (19 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_im7_shift0_qint : STD_LOGIC_VECTOR (19 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_align_17_q : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_align_17_qint : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_im7_shift0_q : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_im7_shift0_qint : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_align_17_q : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_align_17_qint : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_im7_shift1_q : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_im7_shift1_qint : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_align_17_q : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_align_17_qint : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_im7_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_im7_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_align_17_q : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_align_17_qint : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_im7_shift0_q : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_im7_shift0_qint : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_align_17_q : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_align_17_qint : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_im7_shift0_q : STD_LOGIC_VECTOR (19 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_im7_shift0_qint : STD_LOGIC_VECTOR (19 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_align_17_q : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_align_17_qint : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_im7_shift1_q : STD_LOGIC_VECTOR (19 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_im7_shift1_qint : STD_LOGIC_VECTOR (19 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_align_17_q : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_align_17_qint : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_im7_shift0_q : STD_LOGIC_VECTOR (19 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_im7_shift0_qint : STD_LOGIC_VECTOR (19 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_align_17_q : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_align_17_qint : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_im7_shift0_q : STD_LOGIC_VECTOR (19 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_im7_shift0_qint : STD_LOGIC_VECTOR (19 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_align_17_q : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_align_17_qint : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_im7_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_im7_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_align_17_q : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_align_17_qint : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_im7_shift0_q : STD_LOGIC_VECTOR (19 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_im7_shift0_qint : STD_LOGIC_VECTOR (19 downto 0);
    signal u0_m0_wo0_mtree_mult1_35_align_21_q : STD_LOGIC_VECTOR (43 downto 0);
    signal u0_m0_wo0_mtree_mult1_35_align_21_qint : STD_LOGIC_VECTOR (43 downto 0);
    signal u0_m0_wo0_mtree_mult1_35_align_19_q : STD_LOGIC_VECTOR (37 downto 0);
    signal u0_m0_wo0_mtree_mult1_35_align_19_qint : STD_LOGIC_VECTOR (37 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_align_21_q : STD_LOGIC_VECTOR (43 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_align_21_qint : STD_LOGIC_VECTOR (43 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_align_19_q : STD_LOGIC_VECTOR (37 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_align_19_qint : STD_LOGIC_VECTOR (37 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_im0_shift2_q : STD_LOGIC_VECTOR (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_im0_shift2_qint : STD_LOGIC_VECTOR (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_im7_shift2_q : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_im7_shift2_qint : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_align_21_q : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_align_21_qint : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_align_19_q : STD_LOGIC_VECTOR (38 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_align_19_qint : STD_LOGIC_VECTOR (38 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_align_21_q : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_align_21_qint : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_align_19_q : STD_LOGIC_VECTOR (38 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_align_19_qint : STD_LOGIC_VECTOR (38 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_im0_shift2_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_im0_shift2_qint : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_im7_shift2_q : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_im7_shift2_qint : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_align_21_q : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_align_21_qint : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_align_19_q : STD_LOGIC_VECTOR (39 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_align_19_qint : STD_LOGIC_VECTOR (39 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_im0_shift2_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_im0_shift2_qint : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_im7_shift2_q : STD_LOGIC_VECTOR (22 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_im7_shift2_qint : STD_LOGIC_VECTOR (22 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_im0_shift2_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_im0_shift2_qint : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_im3_shift4_q : STD_LOGIC_VECTOR (18 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_im3_shift4_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_im3_shift6_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_im3_shift6_qint : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_im7_shift2_q : STD_LOGIC_VECTOR (22 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_im7_shift2_qint : STD_LOGIC_VECTOR (22 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_im11_shift4_q : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_im11_shift4_qint : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_im11_shift6_q : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_im11_shift6_qint : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_align_21_q : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_align_21_qint : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_align_19_q : STD_LOGIC_VECTOR (40 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_align_19_qint : STD_LOGIC_VECTOR (40 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_im0_shift2_q : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_im0_shift2_qint : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_im7_shift2_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_im7_shift2_qint : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_align_21_q : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_align_21_qint : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_align_19_q : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_align_19_qint : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_align_21_q : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_align_21_qint : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_align_17_q : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_align_17_qint : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_align_19_q : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_align_19_qint : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_align_21_q : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_align_21_qint : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_align_19_q : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_align_19_qint : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_im0_shift2_q : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_im0_shift2_qint : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_im7_shift2_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_im7_shift2_qint : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_align_21_q : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_align_21_qint : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_align_19_q : STD_LOGIC_VECTOR (40 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_align_19_qint : STD_LOGIC_VECTOR (40 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_im0_shift2_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_im0_shift2_qint : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_im3_shift4_q : STD_LOGIC_VECTOR (18 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_im3_shift4_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_im3_shift6_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_im3_shift6_qint : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_im7_shift2_q : STD_LOGIC_VECTOR (22 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_im7_shift2_qint : STD_LOGIC_VECTOR (22 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_im11_shift4_q : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_im11_shift4_qint : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_im11_shift6_q : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_im11_shift6_qint : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_im0_shift2_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_im0_shift2_qint : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_im7_shift2_q : STD_LOGIC_VECTOR (22 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_im7_shift2_qint : STD_LOGIC_VECTOR (22 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_align_21_q : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_align_21_qint : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_align_19_q : STD_LOGIC_VECTOR (39 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_align_19_qint : STD_LOGIC_VECTOR (39 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_im0_shift2_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_im0_shift2_qint : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_im7_shift2_q : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_im7_shift2_qint : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_align_21_q : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_align_21_qint : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_align_19_q : STD_LOGIC_VECTOR (38 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_align_19_qint : STD_LOGIC_VECTOR (38 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_align_21_q : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_align_21_qint : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_align_19_q : STD_LOGIC_VECTOR (38 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_align_19_qint : STD_LOGIC_VECTOR (38 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_im0_shift2_q : STD_LOGIC_VECTOR (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_im0_shift2_qint : STD_LOGIC_VECTOR (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_im7_shift2_q : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_im7_shift2_qint : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_align_21_q : STD_LOGIC_VECTOR (43 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_align_21_qint : STD_LOGIC_VECTOR (43 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_align_19_q : STD_LOGIC_VECTOR (37 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_align_19_qint : STD_LOGIC_VECTOR (37 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_align_21_q : STD_LOGIC_VECTOR (43 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_align_21_qint : STD_LOGIC_VECTOR (43 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_align_19_q : STD_LOGIC_VECTOR (37 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_align_19_qint : STD_LOGIC_VECTOR (37 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_im0_shift0_q : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_im0_shift0_qint : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_35_im0_shift0_q : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_mtree_mult1_35_im0_shift0_qint : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_im0_shift0_q : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_im0_shift0_qint : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_im0_shift0_q : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_im0_shift0_qint : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_im0_shift1_q : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_im0_shift1_qint : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_im0_shift0_q : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_im0_shift0_qint : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_im0_shift0_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_im0_shift0_qint : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_im0_shift0_q : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_im0_shift0_qint : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_im0_shift1_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_im0_shift1_qint : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_im0_shift0_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_im0_shift0_qint : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_im0_shift0_q : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_im0_shift0_qint : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_im0_shift2_q : STD_LOGIC_VECTOR (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_im0_shift2_qint : STD_LOGIC_VECTOR (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_im0_shift0_q : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_im0_shift0_qint : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_im0_shift2_q : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_im0_shift2_qint : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_im0_shift2_q : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_im0_shift2_qint : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_im0_shift0_q : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_im0_shift0_qint : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_im0_shift2_q : STD_LOGIC_VECTOR (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_im0_shift2_qint : STD_LOGIC_VECTOR (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_im0_shift0_q : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_im0_shift0_qint : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_im0_shift0_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_im0_shift0_qint : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_im0_shift1_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_im0_shift1_qint : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_im0_shift0_q : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_im0_shift0_qint : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_im0_shift0_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_im0_shift0_qint : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_im0_shift0_q : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_im0_shift0_qint : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_im0_shift1_q : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_im0_shift1_qint : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_im0_shift0_q : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_im0_shift0_qint : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_im0_shift0_q : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_im0_shift0_qint : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_im0_shift0_q : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_im0_shift0_qint : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_im0_shift0_q : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_im0_shift0_qint : STD_LOGIC_VECTOR (8 downto 0);
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
    signal u0_m0_wo0_mtree_mult1_23_im3_shift0_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_im3_shift0_qint : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_im3_shift2_q : STD_LOGIC_VECTOR (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_im3_shift2_qint : STD_LOGIC_VECTOR (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_bjB10_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_im0_shift0_q : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_im0_shift0_qint : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_bjB10_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_bjB10_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_im0_shift0_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_im0_shift0_qint : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_bjB10_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_im0_shift0_q : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_im0_shift0_qint : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_im3_shift0_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_im3_shift0_qint : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_bjB10_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_im0_shift0_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_im0_shift0_qint : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_bjB10_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_bjB10_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_im0_shift0_q : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_im0_shift0_qint : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_bjB10_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_im3_shift0_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_im3_shift0_qint : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_im3_shift2_q : STD_LOGIC_VECTOR (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_im3_shift2_qint : STD_LOGIC_VECTOR (10 downto 0);
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
    signal u0_m0_wo0_mtree_mult1_36_align_19_q : STD_LOGIC_VECTOR (38 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_align_19_qint : STD_LOGIC_VECTOR (38 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_align_19_q : STD_LOGIC_VECTOR (39 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_align_19_qint : STD_LOGIC_VECTOR (39 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_align_19_q : STD_LOGIC_VECTOR (39 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_align_19_qint : STD_LOGIC_VECTOR (39 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_align_19_q : STD_LOGIC_VECTOR (38 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_align_19_qint : STD_LOGIC_VECTOR (38 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_align_21_q : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_align_21_qint : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_align_19_q : STD_LOGIC_VECTOR (38 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_align_19_qint : STD_LOGIC_VECTOR (38 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_align_21_q : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_align_21_qint : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_align_19_q : STD_LOGIC_VECTOR (38 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_align_19_qint : STD_LOGIC_VECTOR (38 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_align_21_q : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_align_21_qint : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_align_19_q : STD_LOGIC_VECTOR (39 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_align_19_qint : STD_LOGIC_VECTOR (39 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_align_21_q : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_align_21_qint : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_align_17_q : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_align_17_qint : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_align_19_q : STD_LOGIC_VECTOR (39 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_align_19_qint : STD_LOGIC_VECTOR (39 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_align_21_q : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_align_21_qint : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_align_19_q : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_align_19_qint : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_align_21_q : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_align_21_qint : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_align_19_q : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_align_19_qint : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_align_21_q : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_align_21_qint : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_align_17_q : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_align_17_qint : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_align_19_q : STD_LOGIC_VECTOR (39 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_align_19_qint : STD_LOGIC_VECTOR (39 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_align_21_q : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_align_21_qint : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_align_19_q : STD_LOGIC_VECTOR (39 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_align_19_qint : STD_LOGIC_VECTOR (39 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_align_21_q : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_align_21_qint : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_align_19_q : STD_LOGIC_VECTOR (38 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_align_19_qint : STD_LOGIC_VECTOR (38 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_align_21_q : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_align_21_qint : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_align_19_q : STD_LOGIC_VECTOR (38 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_align_19_qint : STD_LOGIC_VECTOR (38 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_align_21_q : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_align_21_qint : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_align_21_q : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_align_21_qint : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_align_21_q : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_align_21_qint : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_align_21_q : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_align_21_qint : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_im11_shift0_q : STD_LOGIC_VECTOR (22 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_im11_shift0_qint : STD_LOGIC_VECTOR (22 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_im11_shift2_q : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_im11_shift2_qint : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_im7_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_im7_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_im7_shift0_q : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_im7_shift0_qint : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_im7_shift0_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_im7_shift0_qint : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_im11_shift0_q : STD_LOGIC_VECTOR (34 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_im11_shift0_qint : STD_LOGIC_VECTOR (34 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_im7_shift0_q : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_im7_shift0_qint : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_im7_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_im7_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_im11_shift0_q : STD_LOGIC_VECTOR (22 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_im11_shift0_qint : STD_LOGIC_VECTOR (22 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_im11_shift2_q : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_im11_shift2_qint : STD_LOGIC_VECTOR (21 downto 0);

begin


    -- VCC(CONSTANT,1)@0
    VCC_q <= "1";

    -- d_u0_m0_wo0_wi0_r0_phasedelay0_q_14(DELAY,3024)@10 + 4
    d_u0_m0_wo0_wi0_r0_phasedelay0_q_14 : dspba_delay
    GENERIC MAP ( width => 24, depth => 4, reset_kind => "ASYNC" )
    PORT MAP ( xin => xIn_0, xout => d_u0_m0_wo0_wi0_r0_phasedelay0_q_14_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_36_bs2_merged_bit_select(BITSELECT,2981)@14
    u0_m0_wo0_mtree_mult1_36_bs2_merged_bit_select_b <= STD_LOGIC_VECTOR(d_u0_m0_wo0_wi0_r0_phasedelay0_q_14_q(23 downto 17));
    u0_m0_wo0_mtree_mult1_36_bs2_merged_bit_select_c <= STD_LOGIC_VECTOR(d_u0_m0_wo0_wi0_r0_phasedelay0_q_14_q(16 downto 0));

    -- d_u0_m0_wo0_mtree_mult1_36_bs2_merged_bit_select_b_16(DELAY,3064)@14 + 2
    d_u0_m0_wo0_mtree_mult1_36_bs2_merged_bit_select_b_16 : dspba_delay
    GENERIC MAP ( width => 7, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_mtree_mult1_36_bs2_merged_bit_select_b, xout => d_u0_m0_wo0_mtree_mult1_36_bs2_merged_bit_select_b_16_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_36_im0_shift0(BITSHIFT,937)@16
    u0_m0_wo0_mtree_mult1_36_im0_shift0_qint <= d_u0_m0_wo0_mtree_mult1_36_bs2_merged_bit_select_b_16_q & "00";
    u0_m0_wo0_mtree_mult1_36_im0_shift0_q <= u0_m0_wo0_mtree_mult1_36_im0_shift0_qint(8 downto 0);

    -- u0_m0_wo0_mtree_mult1_36_align_21(BITSHIFT,204)@16
    u0_m0_wo0_mtree_mult1_36_align_21_qint <= STD_LOGIC_VECTOR((10 downto 9 => u0_m0_wo0_mtree_mult1_36_im0_shift0_q(8)) & u0_m0_wo0_mtree_mult1_36_im0_shift0_q) & "0000000000000000000000000000000000";
    u0_m0_wo0_mtree_mult1_36_align_21_q <= u0_m0_wo0_mtree_mult1_36_align_21_qint(44 downto 0);

    -- u0_m0_wo0_mtree_mult1_36_bjB10(BITJOIN,193)@14
    u0_m0_wo0_mtree_mult1_36_bjB10_q <= GND_q & u0_m0_wo0_mtree_mult1_36_bs2_merged_bit_select_c;

    -- d_u0_m0_wo0_mtree_mult1_36_bjB10_q_16(DELAY,3036)@14 + 2
    d_u0_m0_wo0_mtree_mult1_36_bjB10_q_16 : dspba_delay
    GENERIC MAP ( width => 18, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_mtree_mult1_36_bjB10_q, xout => d_u0_m0_wo0_mtree_mult1_36_bjB10_q_16_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_36_im7_shift0(BITSHIFT,952)@16
    u0_m0_wo0_mtree_mult1_36_im7_shift0_qint <= d_u0_m0_wo0_mtree_mult1_36_bjB10_q_16_q & "00";
    u0_m0_wo0_mtree_mult1_36_im7_shift0_q <= u0_m0_wo0_mtree_mult1_36_im7_shift0_qint(19 downto 0);

    -- u0_m0_wo0_mtree_mult1_36_align_19(BITSHIFT,202)@16
    u0_m0_wo0_mtree_mult1_36_align_19_qint <= STD_LOGIC_VECTOR((21 downto 20 => u0_m0_wo0_mtree_mult1_36_im7_shift0_q(19)) & u0_m0_wo0_mtree_mult1_36_im7_shift0_q) & "00000000000000000";
    u0_m0_wo0_mtree_mult1_36_align_19_q <= u0_m0_wo0_mtree_mult1_36_align_19_qint(38 downto 0);

    -- u0_m0_wo0_mtree_mult1_36_result_add_0_1(ADD,207)@16 + 1
    u0_m0_wo0_mtree_mult1_36_result_add_0_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((45 downto 39 => u0_m0_wo0_mtree_mult1_36_align_19_q(38)) & u0_m0_wo0_mtree_mult1_36_align_19_q));
    u0_m0_wo0_mtree_mult1_36_result_add_0_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((45 downto 45 => u0_m0_wo0_mtree_mult1_36_align_21_q(44)) & u0_m0_wo0_mtree_mult1_36_align_21_q));
    u0_m0_wo0_mtree_mult1_36_result_add_0_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_36_result_add_0_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_36_result_add_0_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_36_result_add_0_1_a) + SIGNED(u0_m0_wo0_mtree_mult1_36_result_add_0_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_36_result_add_0_1_q <= u0_m0_wo0_mtree_mult1_36_result_add_0_1_o(45 downto 0);

    -- u0_m0_wo0_mtree_mult1_36_bjA5_q_const(CONSTANT,3010)@0
    u0_m0_wo0_mtree_mult1_36_bjA5_q_const_q <= "010000110101010011";

    -- u0_m0_wo0_mtree_mult1_36_im3(MULT,186)@14 + 2
    u0_m0_wo0_mtree_mult1_36_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_36_bjA5_q_const_q);
    u0_m0_wo0_mtree_mult1_36_im3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_36_bs2_merged_bit_select_b);
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

    -- u0_m0_wo0_mtree_mult1_36_align_17(BITSHIFT,200)@16
    u0_m0_wo0_mtree_mult1_36_align_17_qint <= u0_m0_wo0_mtree_mult1_36_im3_q & "00000000000000000";
    u0_m0_wo0_mtree_mult1_36_align_17_q <= u0_m0_wo0_mtree_mult1_36_align_17_qint(41 downto 0);

    -- u0_m0_wo0_mtree_mult1_36_im11(MULT,194)@14 + 2
    u0_m0_wo0_mtree_mult1_36_im11_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_36_bjA5_q_const_q);
    u0_m0_wo0_mtree_mult1_36_im11_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_36_bjB10_q);
    u0_m0_wo0_mtree_mult1_36_im11_reset <= areset;
    u0_m0_wo0_mtree_mult1_36_im11_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 18,
        lpm_widthp => 36,
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

    -- u0_m0_wo0_mtree_mult1_36_result_add_0_0(ADD,206)@16 + 1
    u0_m0_wo0_mtree_mult1_36_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((42 downto 36 => u0_m0_wo0_mtree_mult1_36_im11_q(35)) & u0_m0_wo0_mtree_mult1_36_im11_q));
    u0_m0_wo0_mtree_mult1_36_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((42 downto 42 => u0_m0_wo0_mtree_mult1_36_align_17_q(41)) & u0_m0_wo0_mtree_mult1_36_align_17_q));
    u0_m0_wo0_mtree_mult1_36_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_36_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_36_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_36_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_36_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_36_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_36_result_add_0_0_o(42 downto 0);

    -- u0_m0_wo0_mtree_mult1_36_result_add_1_0(ADD,208)@17 + 1
    u0_m0_wo0_mtree_mult1_36_result_add_1_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((46 downto 43 => u0_m0_wo0_mtree_mult1_36_result_add_0_0_q(42)) & u0_m0_wo0_mtree_mult1_36_result_add_0_0_q));
    u0_m0_wo0_mtree_mult1_36_result_add_1_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((46 downto 46 => u0_m0_wo0_mtree_mult1_36_result_add_0_1_q(45)) & u0_m0_wo0_mtree_mult1_36_result_add_0_1_q));
    u0_m0_wo0_mtree_mult1_36_result_add_1_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_36_result_add_1_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_36_result_add_1_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_36_result_add_1_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_36_result_add_1_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_36_result_add_1_0_q <= u0_m0_wo0_mtree_mult1_36_result_add_1_0_o(46 downto 0);

    -- u0_m0_wo0_mtree_mult1_35_im0_shift0(BITSHIFT,967)@14
    u0_m0_wo0_mtree_mult1_35_im0_shift0_qint <= d_u0_m0_wo0_mtree_mult1_35_bs2_merged_bit_select_b_14_q & "0";
    u0_m0_wo0_mtree_mult1_35_im0_shift0_q <= u0_m0_wo0_mtree_mult1_35_im0_shift0_qint(7 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr1(DELAY,20)@10
    u0_m0_wo0_wi0_r0_delayr1 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => xIn_0, xout => u0_m0_wo0_wi0_r0_delayr1_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_r0_delayr1_q_13(DELAY,3025)@10 + 3
    d_u0_m0_wo0_wi0_r0_delayr1_q_13 : dspba_delay
    GENERIC MAP ( width => 24, depth => 3, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr1_q, xout => d_u0_m0_wo0_wi0_r0_delayr1_q_13_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_35_bs2_merged_bit_select(BITSELECT,2982)@13
    u0_m0_wo0_mtree_mult1_35_bs2_merged_bit_select_b <= STD_LOGIC_VECTOR(d_u0_m0_wo0_wi0_r0_delayr1_q_13_q(23 downto 17));
    u0_m0_wo0_mtree_mult1_35_bs2_merged_bit_select_c <= STD_LOGIC_VECTOR(d_u0_m0_wo0_wi0_r0_delayr1_q_13_q(16 downto 0));

    -- d_u0_m0_wo0_mtree_mult1_35_bs2_merged_bit_select_b_14(DELAY,3065)@13 + 1
    d_u0_m0_wo0_mtree_mult1_35_bs2_merged_bit_select_b_14 : dspba_delay
    GENERIC MAP ( width => 7, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_mtree_mult1_35_bs2_merged_bit_select_b, xout => d_u0_m0_wo0_mtree_mult1_35_bs2_merged_bit_select_b_14_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_35_im0_add_1(ADD,968)@14 + 1
    u0_m0_wo0_mtree_mult1_35_im0_add_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((8 downto 7 => d_u0_m0_wo0_mtree_mult1_35_bs2_merged_bit_select_b_14_q(6)) & d_u0_m0_wo0_mtree_mult1_35_bs2_merged_bit_select_b_14_q));
    u0_m0_wo0_mtree_mult1_35_im0_add_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((8 downto 8 => u0_m0_wo0_mtree_mult1_35_im0_shift0_q(7)) & u0_m0_wo0_mtree_mult1_35_im0_shift0_q));
    u0_m0_wo0_mtree_mult1_35_im0_add_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_35_im0_add_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_35_im0_add_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_35_im0_add_1_a) + SIGNED(u0_m0_wo0_mtree_mult1_35_im0_add_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_35_im0_add_1_q <= u0_m0_wo0_mtree_mult1_35_im0_add_1_o(8 downto 0);

    -- u0_m0_wo0_mtree_mult1_35_align_21(BITSHIFT,230)@15
    u0_m0_wo0_mtree_mult1_35_align_21_qint <= STD_LOGIC_VECTOR((9 downto 9 => u0_m0_wo0_mtree_mult1_35_im0_add_1_q(8)) & u0_m0_wo0_mtree_mult1_35_im0_add_1_q) & "0000000000000000000000000000000000";
    u0_m0_wo0_mtree_mult1_35_align_21_q <= u0_m0_wo0_mtree_mult1_35_align_21_qint(43 downto 0);

    -- u0_m0_wo0_mtree_mult1_35_im7_shift0(BITSHIFT,979)@14
    u0_m0_wo0_mtree_mult1_35_im7_shift0_qint <= d_u0_m0_wo0_mtree_mult1_35_bjB10_q_14_q & "0";
    u0_m0_wo0_mtree_mult1_35_im7_shift0_q <= u0_m0_wo0_mtree_mult1_35_im7_shift0_qint(18 downto 0);

    -- u0_m0_wo0_mtree_mult1_35_bjB10(BITJOIN,219)@13
    u0_m0_wo0_mtree_mult1_35_bjB10_q <= GND_q & u0_m0_wo0_mtree_mult1_35_bs2_merged_bit_select_c;

    -- d_u0_m0_wo0_mtree_mult1_35_bjB10_q_14(DELAY,3037)@13 + 1
    d_u0_m0_wo0_mtree_mult1_35_bjB10_q_14 : dspba_delay
    GENERIC MAP ( width => 18, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_mtree_mult1_35_bjB10_q, xout => d_u0_m0_wo0_mtree_mult1_35_bjB10_q_14_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_35_im7_add_1(ADD,980)@14 + 1
    u0_m0_wo0_mtree_mult1_35_im7_add_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((19 downto 18 => d_u0_m0_wo0_mtree_mult1_35_bjB10_q_14_q(17)) & d_u0_m0_wo0_mtree_mult1_35_bjB10_q_14_q));
    u0_m0_wo0_mtree_mult1_35_im7_add_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((19 downto 19 => u0_m0_wo0_mtree_mult1_35_im7_shift0_q(18)) & u0_m0_wo0_mtree_mult1_35_im7_shift0_q));
    u0_m0_wo0_mtree_mult1_35_im7_add_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_35_im7_add_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_35_im7_add_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_35_im7_add_1_a) + SIGNED(u0_m0_wo0_mtree_mult1_35_im7_add_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_35_im7_add_1_q <= u0_m0_wo0_mtree_mult1_35_im7_add_1_o(19 downto 0);

    -- u0_m0_wo0_mtree_mult1_35_align_19(BITSHIFT,228)@15
    u0_m0_wo0_mtree_mult1_35_align_19_qint <= STD_LOGIC_VECTOR((20 downto 20 => u0_m0_wo0_mtree_mult1_35_im7_add_1_q(19)) & u0_m0_wo0_mtree_mult1_35_im7_add_1_q) & "00000000000000000";
    u0_m0_wo0_mtree_mult1_35_align_19_q <= u0_m0_wo0_mtree_mult1_35_align_19_qint(37 downto 0);

    -- u0_m0_wo0_mtree_mult1_35_result_add_0_1(ADD,233)@15 + 1
    u0_m0_wo0_mtree_mult1_35_result_add_0_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((44 downto 38 => u0_m0_wo0_mtree_mult1_35_align_19_q(37)) & u0_m0_wo0_mtree_mult1_35_align_19_q));
    u0_m0_wo0_mtree_mult1_35_result_add_0_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((44 downto 44 => u0_m0_wo0_mtree_mult1_35_align_21_q(43)) & u0_m0_wo0_mtree_mult1_35_align_21_q));
    u0_m0_wo0_mtree_mult1_35_result_add_0_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_35_result_add_0_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_35_result_add_0_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_35_result_add_0_1_a) + SIGNED(u0_m0_wo0_mtree_mult1_35_result_add_0_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_35_result_add_0_1_q <= u0_m0_wo0_mtree_mult1_35_result_add_0_1_o(44 downto 0);

    -- u0_m0_wo0_mtree_mult1_35_bjA5_q_const(CONSTANT,3011)@0
    u0_m0_wo0_mtree_mult1_35_bjA5_q_const_q <= "001100011100000011";

    -- u0_m0_wo0_mtree_mult1_35_im3(MULT,212)@13 + 2
    u0_m0_wo0_mtree_mult1_35_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_35_bjA5_q_const_q);
    u0_m0_wo0_mtree_mult1_35_im3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_35_bs2_merged_bit_select_b);
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

    -- u0_m0_wo0_mtree_mult1_35_align_17(BITSHIFT,226)@15
    u0_m0_wo0_mtree_mult1_35_align_17_qint <= u0_m0_wo0_mtree_mult1_35_im3_q & "00000000000000000";
    u0_m0_wo0_mtree_mult1_35_align_17_q <= u0_m0_wo0_mtree_mult1_35_align_17_qint(41 downto 0);

    -- u0_m0_wo0_mtree_mult1_35_im11(MULT,220)@13 + 2
    u0_m0_wo0_mtree_mult1_35_im11_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_35_bjA5_q_const_q);
    u0_m0_wo0_mtree_mult1_35_im11_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_35_bjB10_q);
    u0_m0_wo0_mtree_mult1_35_im11_reset <= areset;
    u0_m0_wo0_mtree_mult1_35_im11_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 18,
        lpm_widthp => 36,
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

    -- u0_m0_wo0_mtree_mult1_35_result_add_0_0(ADD,232)@15 + 1
    u0_m0_wo0_mtree_mult1_35_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((42 downto 36 => u0_m0_wo0_mtree_mult1_35_im11_q(35)) & u0_m0_wo0_mtree_mult1_35_im11_q));
    u0_m0_wo0_mtree_mult1_35_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((42 downto 42 => u0_m0_wo0_mtree_mult1_35_align_17_q(41)) & u0_m0_wo0_mtree_mult1_35_align_17_q));
    u0_m0_wo0_mtree_mult1_35_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_35_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_35_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_35_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_35_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_35_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_35_result_add_0_0_o(42 downto 0);

    -- u0_m0_wo0_mtree_mult1_35_result_add_1_0(ADD,234)@16 + 1
    u0_m0_wo0_mtree_mult1_35_result_add_1_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((45 downto 43 => u0_m0_wo0_mtree_mult1_35_result_add_0_0_q(42)) & u0_m0_wo0_mtree_mult1_35_result_add_0_0_q));
    u0_m0_wo0_mtree_mult1_35_result_add_1_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((45 downto 45 => u0_m0_wo0_mtree_mult1_35_result_add_0_1_q(44)) & u0_m0_wo0_mtree_mult1_35_result_add_0_1_q));
    u0_m0_wo0_mtree_mult1_35_result_add_1_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_35_result_add_1_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_35_result_add_1_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_35_result_add_1_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_35_result_add_1_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_35_result_add_1_0_q <= u0_m0_wo0_mtree_mult1_35_result_add_1_0_o(45 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr2(DELAY,21)@10
    u0_m0_wo0_wi0_r0_delayr2 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr1_q, xout => u0_m0_wo0_wi0_r0_delayr2_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_wi0_r0_delayr3(DELAY,22)@10
    u0_m0_wo0_wi0_r0_delayr3 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr2_q, xout => u0_m0_wo0_wi0_r0_delayr3_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_r0_delayr3_q_12(DELAY,3026)@10 + 2
    d_u0_m0_wo0_wi0_r0_delayr3_q_12 : dspba_delay
    GENERIC MAP ( width => 24, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr3_q, xout => d_u0_m0_wo0_wi0_r0_delayr3_q_12_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_33_bs2_merged_bit_select(BITSELECT,2983)@12
    u0_m0_wo0_mtree_mult1_33_bs2_merged_bit_select_b <= STD_LOGIC_VECTOR(d_u0_m0_wo0_wi0_r0_delayr3_q_12_q(23 downto 17));
    u0_m0_wo0_mtree_mult1_33_bs2_merged_bit_select_c <= STD_LOGIC_VECTOR(d_u0_m0_wo0_wi0_r0_delayr3_q_12_q(16 downto 0));

    -- d_u0_m0_wo0_mtree_mult1_33_bs2_merged_bit_select_b_13(DELAY,3066)@12 + 1
    d_u0_m0_wo0_mtree_mult1_33_bs2_merged_bit_select_b_13 : dspba_delay
    GENERIC MAP ( width => 7, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_mtree_mult1_33_bs2_merged_bit_select_b, xout => d_u0_m0_wo0_mtree_mult1_33_bs2_merged_bit_select_b_13_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_33_im0_shift0(BITSHIFT,991)@13
    u0_m0_wo0_mtree_mult1_33_im0_shift0_qint <= d_u0_m0_wo0_mtree_mult1_33_bs2_merged_bit_select_b_13_q & "00";
    u0_m0_wo0_mtree_mult1_33_im0_shift0_q <= u0_m0_wo0_mtree_mult1_33_im0_shift0_qint(8 downto 0);

    -- u0_m0_wo0_mtree_mult1_33_im0_sub_1(SUB,992)@13 + 1
    u0_m0_wo0_mtree_mult1_33_im0_sub_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((9 downto 1 => GND_q(0)) & GND_q));
    u0_m0_wo0_mtree_mult1_33_im0_sub_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((9 downto 9 => u0_m0_wo0_mtree_mult1_33_im0_shift0_q(8)) & u0_m0_wo0_mtree_mult1_33_im0_shift0_q));
    u0_m0_wo0_mtree_mult1_33_im0_sub_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_33_im0_sub_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_33_im0_sub_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_33_im0_sub_1_a) - SIGNED(u0_m0_wo0_mtree_mult1_33_im0_sub_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_33_im0_sub_1_q <= u0_m0_wo0_mtree_mult1_33_im0_sub_1_o(9 downto 0);

    -- u0_m0_wo0_mtree_mult1_33_align_21(BITSHIFT,256)@14
    u0_m0_wo0_mtree_mult1_33_align_21_qint <= u0_m0_wo0_mtree_mult1_33_im0_sub_1_q & "0000000000000000000000000000000000";
    u0_m0_wo0_mtree_mult1_33_align_21_q <= u0_m0_wo0_mtree_mult1_33_align_21_qint(43 downto 0);

    -- u0_m0_wo0_mtree_mult1_33_bjB10(BITJOIN,245)@12
    u0_m0_wo0_mtree_mult1_33_bjB10_q <= GND_q & u0_m0_wo0_mtree_mult1_33_bs2_merged_bit_select_c;

    -- d_u0_m0_wo0_mtree_mult1_33_bjB10_q_13(DELAY,3038)@12 + 1
    d_u0_m0_wo0_mtree_mult1_33_bjB10_q_13 : dspba_delay
    GENERIC MAP ( width => 18, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_mtree_mult1_33_bjB10_q, xout => d_u0_m0_wo0_mtree_mult1_33_bjB10_q_13_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_33_im7_shift0(BITSHIFT,1006)@13
    u0_m0_wo0_mtree_mult1_33_im7_shift0_qint <= d_u0_m0_wo0_mtree_mult1_33_bjB10_q_13_q & "00";
    u0_m0_wo0_mtree_mult1_33_im7_shift0_q <= u0_m0_wo0_mtree_mult1_33_im7_shift0_qint(19 downto 0);

    -- u0_m0_wo0_mtree_mult1_33_im7_sub_1(SUB,1007)@13 + 1
    u0_m0_wo0_mtree_mult1_33_im7_sub_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((20 downto 1 => GND_q(0)) & GND_q));
    u0_m0_wo0_mtree_mult1_33_im7_sub_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((20 downto 20 => u0_m0_wo0_mtree_mult1_33_im7_shift0_q(19)) & u0_m0_wo0_mtree_mult1_33_im7_shift0_q));
    u0_m0_wo0_mtree_mult1_33_im7_sub_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_33_im7_sub_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_33_im7_sub_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_33_im7_sub_1_a) - SIGNED(u0_m0_wo0_mtree_mult1_33_im7_sub_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_33_im7_sub_1_q <= u0_m0_wo0_mtree_mult1_33_im7_sub_1_o(20 downto 0);

    -- u0_m0_wo0_mtree_mult1_33_align_19(BITSHIFT,254)@14
    u0_m0_wo0_mtree_mult1_33_align_19_qint <= u0_m0_wo0_mtree_mult1_33_im7_sub_1_q & "00000000000000000";
    u0_m0_wo0_mtree_mult1_33_align_19_q <= u0_m0_wo0_mtree_mult1_33_align_19_qint(37 downto 0);

    -- u0_m0_wo0_mtree_mult1_33_result_add_0_1(ADD,259)@14 + 1
    u0_m0_wo0_mtree_mult1_33_result_add_0_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((44 downto 38 => u0_m0_wo0_mtree_mult1_33_align_19_q(37)) & u0_m0_wo0_mtree_mult1_33_align_19_q));
    u0_m0_wo0_mtree_mult1_33_result_add_0_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((44 downto 44 => u0_m0_wo0_mtree_mult1_33_align_21_q(43)) & u0_m0_wo0_mtree_mult1_33_align_21_q));
    u0_m0_wo0_mtree_mult1_33_result_add_0_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_33_result_add_0_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_33_result_add_0_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_33_result_add_0_1_a) + SIGNED(u0_m0_wo0_mtree_mult1_33_result_add_0_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_33_result_add_0_1_q <= u0_m0_wo0_mtree_mult1_33_result_add_0_1_o(44 downto 0);

    -- u0_m0_wo0_mtree_mult1_33_bjA5_q_const(CONSTANT,3012)@0
    u0_m0_wo0_mtree_mult1_33_bjA5_q_const_q <= "000101000110010110";

    -- u0_m0_wo0_mtree_mult1_33_im3(MULT,238)@12 + 2
    u0_m0_wo0_mtree_mult1_33_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_33_bjA5_q_const_q);
    u0_m0_wo0_mtree_mult1_33_im3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_33_bs2_merged_bit_select_b);
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

    -- u0_m0_wo0_mtree_mult1_33_align_17(BITSHIFT,252)@14
    u0_m0_wo0_mtree_mult1_33_align_17_qint <= u0_m0_wo0_mtree_mult1_33_im3_q & "00000000000000000";
    u0_m0_wo0_mtree_mult1_33_align_17_q <= u0_m0_wo0_mtree_mult1_33_align_17_qint(41 downto 0);

    -- u0_m0_wo0_mtree_mult1_33_im11(MULT,246)@12 + 2
    u0_m0_wo0_mtree_mult1_33_im11_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_33_bjA5_q_const_q);
    u0_m0_wo0_mtree_mult1_33_im11_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_33_bjB10_q);
    u0_m0_wo0_mtree_mult1_33_im11_reset <= areset;
    u0_m0_wo0_mtree_mult1_33_im11_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 18,
        lpm_widthp => 36,
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

    -- u0_m0_wo0_mtree_mult1_33_result_add_0_0(ADD,258)@14 + 1
    u0_m0_wo0_mtree_mult1_33_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((42 downto 36 => u0_m0_wo0_mtree_mult1_33_im11_q(35)) & u0_m0_wo0_mtree_mult1_33_im11_q));
    u0_m0_wo0_mtree_mult1_33_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((42 downto 42 => u0_m0_wo0_mtree_mult1_33_align_17_q(41)) & u0_m0_wo0_mtree_mult1_33_align_17_q));
    u0_m0_wo0_mtree_mult1_33_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_33_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_33_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_33_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_33_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_33_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_33_result_add_0_0_o(42 downto 0);

    -- u0_m0_wo0_mtree_mult1_33_result_add_1_0(ADD,260)@15 + 1
    u0_m0_wo0_mtree_mult1_33_result_add_1_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((45 downto 43 => u0_m0_wo0_mtree_mult1_33_result_add_0_0_q(42)) & u0_m0_wo0_mtree_mult1_33_result_add_0_0_q));
    u0_m0_wo0_mtree_mult1_33_result_add_1_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((45 downto 45 => u0_m0_wo0_mtree_mult1_33_result_add_0_1_q(44)) & u0_m0_wo0_mtree_mult1_33_result_add_0_1_q));
    u0_m0_wo0_mtree_mult1_33_result_add_1_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_33_result_add_1_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_33_result_add_1_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_33_result_add_1_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_33_result_add_1_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_33_result_add_1_0_q <= u0_m0_wo0_mtree_mult1_33_result_add_1_0_o(45 downto 0);

    -- u0_m0_wo0_mtree_mult1_32_im0_shift0(BITSHIFT,1021)@13
    u0_m0_wo0_mtree_mult1_32_im0_shift0_qint <= d_u0_m0_wo0_mtree_mult1_32_bs2_merged_bit_select_b_13_q & "00";
    u0_m0_wo0_mtree_mult1_32_im0_shift0_q <= u0_m0_wo0_mtree_mult1_32_im0_shift0_qint(8 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr4(DELAY,23)@10
    u0_m0_wo0_wi0_r0_delayr4 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr3_q, xout => u0_m0_wo0_wi0_r0_delayr4_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_r0_delayr4_q_12(DELAY,3027)@10 + 2
    d_u0_m0_wo0_wi0_r0_delayr4_q_12 : dspba_delay
    GENERIC MAP ( width => 24, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr4_q, xout => d_u0_m0_wo0_wi0_r0_delayr4_q_12_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_32_bs2_merged_bit_select(BITSELECT,2984)@12
    u0_m0_wo0_mtree_mult1_32_bs2_merged_bit_select_b <= STD_LOGIC_VECTOR(d_u0_m0_wo0_wi0_r0_delayr4_q_12_q(23 downto 17));
    u0_m0_wo0_mtree_mult1_32_bs2_merged_bit_select_c <= STD_LOGIC_VECTOR(d_u0_m0_wo0_wi0_r0_delayr4_q_12_q(16 downto 0));

    -- d_u0_m0_wo0_mtree_mult1_32_bs2_merged_bit_select_b_13(DELAY,3067)@12 + 1
    d_u0_m0_wo0_mtree_mult1_32_bs2_merged_bit_select_b_13 : dspba_delay
    GENERIC MAP ( width => 7, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_mtree_mult1_32_bs2_merged_bit_select_b, xout => d_u0_m0_wo0_mtree_mult1_32_bs2_merged_bit_select_b_13_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_32_im0_sub_1(SUB,1022)@13 + 1
    u0_m0_wo0_mtree_mult1_32_im0_sub_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((9 downto 7 => d_u0_m0_wo0_mtree_mult1_32_bs2_merged_bit_select_b_13_q(6)) & d_u0_m0_wo0_mtree_mult1_32_bs2_merged_bit_select_b_13_q));
    u0_m0_wo0_mtree_mult1_32_im0_sub_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((9 downto 9 => u0_m0_wo0_mtree_mult1_32_im0_shift0_q(8)) & u0_m0_wo0_mtree_mult1_32_im0_shift0_q));
    u0_m0_wo0_mtree_mult1_32_im0_sub_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_32_im0_sub_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_32_im0_sub_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_32_im0_sub_1_a) - SIGNED(u0_m0_wo0_mtree_mult1_32_im0_sub_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_32_im0_sub_1_q <= u0_m0_wo0_mtree_mult1_32_im0_sub_1_o(9 downto 0);

    -- u0_m0_wo0_mtree_mult1_32_im0_shift2(BITSHIFT,1023)@14
    u0_m0_wo0_mtree_mult1_32_im0_shift2_qint <= u0_m0_wo0_mtree_mult1_32_im0_sub_1_q & "0";
    u0_m0_wo0_mtree_mult1_32_im0_shift2_q <= u0_m0_wo0_mtree_mult1_32_im0_shift2_qint(10 downto 0);

    -- u0_m0_wo0_mtree_mult1_32_align_21(BITSHIFT,282)@14
    u0_m0_wo0_mtree_mult1_32_align_21_qint <= u0_m0_wo0_mtree_mult1_32_im0_shift2_q & "0000000000000000000000000000000000";
    u0_m0_wo0_mtree_mult1_32_align_21_q <= u0_m0_wo0_mtree_mult1_32_align_21_qint(44 downto 0);

    -- u0_m0_wo0_mtree_mult1_32_im7_shift0(BITSHIFT,1037)@13
    u0_m0_wo0_mtree_mult1_32_im7_shift0_qint <= d_u0_m0_wo0_mtree_mult1_32_bjB10_q_13_q & "00";
    u0_m0_wo0_mtree_mult1_32_im7_shift0_q <= u0_m0_wo0_mtree_mult1_32_im7_shift0_qint(19 downto 0);

    -- u0_m0_wo0_mtree_mult1_32_bjB10(BITJOIN,271)@12
    u0_m0_wo0_mtree_mult1_32_bjB10_q <= GND_q & u0_m0_wo0_mtree_mult1_32_bs2_merged_bit_select_c;

    -- d_u0_m0_wo0_mtree_mult1_32_bjB10_q_13(DELAY,3039)@12 + 1
    d_u0_m0_wo0_mtree_mult1_32_bjB10_q_13 : dspba_delay
    GENERIC MAP ( width => 18, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_mtree_mult1_32_bjB10_q, xout => d_u0_m0_wo0_mtree_mult1_32_bjB10_q_13_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_32_im7_sub_1(SUB,1038)@13 + 1
    u0_m0_wo0_mtree_mult1_32_im7_sub_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((20 downto 18 => d_u0_m0_wo0_mtree_mult1_32_bjB10_q_13_q(17)) & d_u0_m0_wo0_mtree_mult1_32_bjB10_q_13_q));
    u0_m0_wo0_mtree_mult1_32_im7_sub_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((20 downto 20 => u0_m0_wo0_mtree_mult1_32_im7_shift0_q(19)) & u0_m0_wo0_mtree_mult1_32_im7_shift0_q));
    u0_m0_wo0_mtree_mult1_32_im7_sub_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_32_im7_sub_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_32_im7_sub_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_32_im7_sub_1_a) - SIGNED(u0_m0_wo0_mtree_mult1_32_im7_sub_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_32_im7_sub_1_q <= u0_m0_wo0_mtree_mult1_32_im7_sub_1_o(20 downto 0);

    -- u0_m0_wo0_mtree_mult1_32_im7_shift2(BITSHIFT,1039)@14
    u0_m0_wo0_mtree_mult1_32_im7_shift2_qint <= u0_m0_wo0_mtree_mult1_32_im7_sub_1_q & "0";
    u0_m0_wo0_mtree_mult1_32_im7_shift2_q <= u0_m0_wo0_mtree_mult1_32_im7_shift2_qint(21 downto 0);

    -- u0_m0_wo0_mtree_mult1_32_align_19(BITSHIFT,280)@14
    u0_m0_wo0_mtree_mult1_32_align_19_qint <= u0_m0_wo0_mtree_mult1_32_im7_shift2_q & "00000000000000000";
    u0_m0_wo0_mtree_mult1_32_align_19_q <= u0_m0_wo0_mtree_mult1_32_align_19_qint(38 downto 0);

    -- u0_m0_wo0_mtree_mult1_32_result_add_0_1(ADD,285)@14 + 1
    u0_m0_wo0_mtree_mult1_32_result_add_0_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((45 downto 39 => u0_m0_wo0_mtree_mult1_32_align_19_q(38)) & u0_m0_wo0_mtree_mult1_32_align_19_q));
    u0_m0_wo0_mtree_mult1_32_result_add_0_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((45 downto 45 => u0_m0_wo0_mtree_mult1_32_align_21_q(44)) & u0_m0_wo0_mtree_mult1_32_align_21_q));
    u0_m0_wo0_mtree_mult1_32_result_add_0_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_32_result_add_0_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_32_result_add_0_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_32_result_add_0_1_a) + SIGNED(u0_m0_wo0_mtree_mult1_32_result_add_0_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_32_result_add_0_1_q <= u0_m0_wo0_mtree_mult1_32_result_add_0_1_o(45 downto 0);

    -- u0_m0_wo0_mtree_mult1_32_bjA5_q_const(CONSTANT,3013)@0
    u0_m0_wo0_mtree_mult1_32_bjA5_q_const_q <= "000101110001100110";

    -- u0_m0_wo0_mtree_mult1_32_im3(MULT,264)@12 + 2
    u0_m0_wo0_mtree_mult1_32_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_32_bjA5_q_const_q);
    u0_m0_wo0_mtree_mult1_32_im3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_32_bs2_merged_bit_select_b);
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

    -- u0_m0_wo0_mtree_mult1_32_align_17(BITSHIFT,278)@14
    u0_m0_wo0_mtree_mult1_32_align_17_qint <= u0_m0_wo0_mtree_mult1_32_im3_q & "00000000000000000";
    u0_m0_wo0_mtree_mult1_32_align_17_q <= u0_m0_wo0_mtree_mult1_32_align_17_qint(41 downto 0);

    -- u0_m0_wo0_mtree_mult1_32_im11(MULT,272)@12 + 2
    u0_m0_wo0_mtree_mult1_32_im11_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_32_bjA5_q_const_q);
    u0_m0_wo0_mtree_mult1_32_im11_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_32_bjB10_q);
    u0_m0_wo0_mtree_mult1_32_im11_reset <= areset;
    u0_m0_wo0_mtree_mult1_32_im11_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 18,
        lpm_widthp => 36,
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

    -- u0_m0_wo0_mtree_mult1_32_result_add_0_0(ADD,284)@14 + 1
    u0_m0_wo0_mtree_mult1_32_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((42 downto 36 => u0_m0_wo0_mtree_mult1_32_im11_q(35)) & u0_m0_wo0_mtree_mult1_32_im11_q));
    u0_m0_wo0_mtree_mult1_32_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((42 downto 42 => u0_m0_wo0_mtree_mult1_32_align_17_q(41)) & u0_m0_wo0_mtree_mult1_32_align_17_q));
    u0_m0_wo0_mtree_mult1_32_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_32_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_32_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_32_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_32_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_32_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_32_result_add_0_0_o(42 downto 0);

    -- u0_m0_wo0_mtree_mult1_32_result_add_1_0(ADD,286)@15 + 1
    u0_m0_wo0_mtree_mult1_32_result_add_1_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((46 downto 43 => u0_m0_wo0_mtree_mult1_32_result_add_0_0_q(42)) & u0_m0_wo0_mtree_mult1_32_result_add_0_0_q));
    u0_m0_wo0_mtree_mult1_32_result_add_1_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((46 downto 46 => u0_m0_wo0_mtree_mult1_32_result_add_0_1_q(45)) & u0_m0_wo0_mtree_mult1_32_result_add_0_1_q));
    u0_m0_wo0_mtree_mult1_32_result_add_1_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_32_result_add_1_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_32_result_add_1_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_32_result_add_1_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_32_result_add_1_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_32_result_add_1_0_q <= u0_m0_wo0_mtree_mult1_32_result_add_1_0_o(46 downto 0);

    -- u0_m0_wo0_mtree_add0_16(ADD,149)@16 + 1
    u0_m0_wo0_mtree_add0_16_a <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_32_result_add_1_0_q(45 downto 0));
    u0_m0_wo0_mtree_add0_16_b <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_33_result_add_1_0_q);
    u0_m0_wo0_mtree_add0_16_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_16_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_16_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_16_a) + SIGNED(u0_m0_wo0_mtree_add0_16_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_16_q <= u0_m0_wo0_mtree_add0_16_o(45 downto 0);

    -- u0_m0_wo0_mtree_add1_8(ADD,159)@17 + 1
    u0_m0_wo0_mtree_add1_8_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((46 downto 46 => u0_m0_wo0_mtree_add0_16_q(45)) & u0_m0_wo0_mtree_add0_16_q));
    u0_m0_wo0_mtree_add1_8_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((46 downto 46 => u0_m0_wo0_mtree_mult1_35_result_add_1_0_q(45)) & u0_m0_wo0_mtree_mult1_35_result_add_1_0_q));
    u0_m0_wo0_mtree_add1_8_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_8_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_8_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_8_a) + SIGNED(u0_m0_wo0_mtree_add1_8_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_8_q <= u0_m0_wo0_mtree_add1_8_o(46 downto 0);

    -- u0_m0_wo0_mtree_add2_4(ADD,164)@18 + 1
    u0_m0_wo0_mtree_add2_4_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((47 downto 47 => u0_m0_wo0_mtree_add1_8_q(46)) & u0_m0_wo0_mtree_add1_8_q));
    u0_m0_wo0_mtree_add2_4_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((47 downto 47 => u0_m0_wo0_mtree_mult1_36_result_add_1_0_q(46)) & u0_m0_wo0_mtree_mult1_36_result_add_1_0_q));
    u0_m0_wo0_mtree_add2_4_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add2_4_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add2_4_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add2_4_a) + SIGNED(u0_m0_wo0_mtree_add2_4_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add2_4_q <= u0_m0_wo0_mtree_add2_4_o(47 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr5(DELAY,24)@10
    u0_m0_wo0_wi0_r0_delayr5 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr4_q, xout => u0_m0_wo0_wi0_r0_delayr5_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_r0_delayr5_q_11(DELAY,3028)@10 + 1
    d_u0_m0_wo0_wi0_r0_delayr5_q_11 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr5_q, xout => d_u0_m0_wo0_wi0_r0_delayr5_q_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_31_bs2_merged_bit_select(BITSELECT,2985)@11
    u0_m0_wo0_mtree_mult1_31_bs2_merged_bit_select_b <= STD_LOGIC_VECTOR(d_u0_m0_wo0_wi0_r0_delayr5_q_11_q(23 downto 17));
    u0_m0_wo0_mtree_mult1_31_bs2_merged_bit_select_c <= STD_LOGIC_VECTOR(d_u0_m0_wo0_wi0_r0_delayr5_q_11_q(16 downto 0));

    -- d_u0_m0_wo0_mtree_mult1_31_bs2_merged_bit_select_b_12(DELAY,3068)@11 + 1
    d_u0_m0_wo0_mtree_mult1_31_bs2_merged_bit_select_b_12 : dspba_delay
    GENERIC MAP ( width => 7, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_mtree_mult1_31_bs2_merged_bit_select_b, xout => d_u0_m0_wo0_mtree_mult1_31_bs2_merged_bit_select_b_12_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_31_im0_shift1(BITSHIFT,1054)@12
    u0_m0_wo0_mtree_mult1_31_im0_shift1_qint <= d_u0_m0_wo0_mtree_mult1_31_bs2_merged_bit_select_b_12_q & "00";
    u0_m0_wo0_mtree_mult1_31_im0_shift1_q <= u0_m0_wo0_mtree_mult1_31_im0_shift1_qint(8 downto 0);

    -- u0_m0_wo0_mtree_mult1_31_im0_sub_0(SUB,1053)@11 + 1
    u0_m0_wo0_mtree_mult1_31_im0_sub_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((7 downto 1 => GND_q(0)) & GND_q));
    u0_m0_wo0_mtree_mult1_31_im0_sub_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((7 downto 7 => u0_m0_wo0_mtree_mult1_31_bs2_merged_bit_select_b(6)) & u0_m0_wo0_mtree_mult1_31_bs2_merged_bit_select_b));
    u0_m0_wo0_mtree_mult1_31_im0_sub_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_31_im0_sub_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_31_im0_sub_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_31_im0_sub_0_a) - SIGNED(u0_m0_wo0_mtree_mult1_31_im0_sub_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_31_im0_sub_0_q <= u0_m0_wo0_mtree_mult1_31_im0_sub_0_o(7 downto 0);

    -- u0_m0_wo0_mtree_mult1_31_im0_sub_2(SUB,1055)@12 + 1
    u0_m0_wo0_mtree_mult1_31_im0_sub_2_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((9 downto 8 => u0_m0_wo0_mtree_mult1_31_im0_sub_0_q(7)) & u0_m0_wo0_mtree_mult1_31_im0_sub_0_q));
    u0_m0_wo0_mtree_mult1_31_im0_sub_2_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((9 downto 9 => u0_m0_wo0_mtree_mult1_31_im0_shift1_q(8)) & u0_m0_wo0_mtree_mult1_31_im0_shift1_q));
    u0_m0_wo0_mtree_mult1_31_im0_sub_2_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_31_im0_sub_2_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_31_im0_sub_2_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_31_im0_sub_2_a) - SIGNED(u0_m0_wo0_mtree_mult1_31_im0_sub_2_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_31_im0_sub_2_q <= u0_m0_wo0_mtree_mult1_31_im0_sub_2_o(9 downto 0);

    -- u0_m0_wo0_mtree_mult1_31_align_21(BITSHIFT,308)@13
    u0_m0_wo0_mtree_mult1_31_align_21_qint <= STD_LOGIC_VECTOR((10 downto 10 => u0_m0_wo0_mtree_mult1_31_im0_sub_2_q(9)) & u0_m0_wo0_mtree_mult1_31_im0_sub_2_q) & "0000000000000000000000000000000000";
    u0_m0_wo0_mtree_mult1_31_align_21_q <= u0_m0_wo0_mtree_mult1_31_align_21_qint(44 downto 0);

    -- u0_m0_wo0_mtree_mult1_31_bjB10(BITJOIN,297)@11
    u0_m0_wo0_mtree_mult1_31_bjB10_q <= GND_q & u0_m0_wo0_mtree_mult1_31_bs2_merged_bit_select_c;

    -- d_u0_m0_wo0_mtree_mult1_31_bjB10_q_12(DELAY,3040)@11 + 1
    d_u0_m0_wo0_mtree_mult1_31_bjB10_q_12 : dspba_delay
    GENERIC MAP ( width => 18, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_mtree_mult1_31_bjB10_q, xout => d_u0_m0_wo0_mtree_mult1_31_bjB10_q_12_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_31_im7_shift1(BITSHIFT,1068)@12
    u0_m0_wo0_mtree_mult1_31_im7_shift1_qint <= d_u0_m0_wo0_mtree_mult1_31_bjB10_q_12_q & "00";
    u0_m0_wo0_mtree_mult1_31_im7_shift1_q <= u0_m0_wo0_mtree_mult1_31_im7_shift1_qint(19 downto 0);

    -- u0_m0_wo0_mtree_mult1_31_im7_sub_0(SUB,1067)@11 + 1
    u0_m0_wo0_mtree_mult1_31_im7_sub_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((18 downto 1 => GND_q(0)) & GND_q));
    u0_m0_wo0_mtree_mult1_31_im7_sub_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((18 downto 18 => u0_m0_wo0_mtree_mult1_31_bjB10_q(17)) & u0_m0_wo0_mtree_mult1_31_bjB10_q));
    u0_m0_wo0_mtree_mult1_31_im7_sub_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_31_im7_sub_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_31_im7_sub_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_31_im7_sub_0_a) - SIGNED(u0_m0_wo0_mtree_mult1_31_im7_sub_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_31_im7_sub_0_q <= u0_m0_wo0_mtree_mult1_31_im7_sub_0_o(18 downto 0);

    -- u0_m0_wo0_mtree_mult1_31_im7_sub_2(SUB,1069)@12 + 1
    u0_m0_wo0_mtree_mult1_31_im7_sub_2_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((20 downto 19 => u0_m0_wo0_mtree_mult1_31_im7_sub_0_q(18)) & u0_m0_wo0_mtree_mult1_31_im7_sub_0_q));
    u0_m0_wo0_mtree_mult1_31_im7_sub_2_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((20 downto 20 => u0_m0_wo0_mtree_mult1_31_im7_shift1_q(19)) & u0_m0_wo0_mtree_mult1_31_im7_shift1_q));
    u0_m0_wo0_mtree_mult1_31_im7_sub_2_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_31_im7_sub_2_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_31_im7_sub_2_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_31_im7_sub_2_a) - SIGNED(u0_m0_wo0_mtree_mult1_31_im7_sub_2_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_31_im7_sub_2_q <= u0_m0_wo0_mtree_mult1_31_im7_sub_2_o(20 downto 0);

    -- u0_m0_wo0_mtree_mult1_31_align_19(BITSHIFT,306)@13
    u0_m0_wo0_mtree_mult1_31_align_19_qint <= STD_LOGIC_VECTOR((21 downto 21 => u0_m0_wo0_mtree_mult1_31_im7_sub_2_q(20)) & u0_m0_wo0_mtree_mult1_31_im7_sub_2_q) & "00000000000000000";
    u0_m0_wo0_mtree_mult1_31_align_19_q <= u0_m0_wo0_mtree_mult1_31_align_19_qint(38 downto 0);

    -- u0_m0_wo0_mtree_mult1_31_result_add_0_1(ADD,311)@13 + 1
    u0_m0_wo0_mtree_mult1_31_result_add_0_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((45 downto 39 => u0_m0_wo0_mtree_mult1_31_align_19_q(38)) & u0_m0_wo0_mtree_mult1_31_align_19_q));
    u0_m0_wo0_mtree_mult1_31_result_add_0_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((45 downto 45 => u0_m0_wo0_mtree_mult1_31_align_21_q(44)) & u0_m0_wo0_mtree_mult1_31_align_21_q));
    u0_m0_wo0_mtree_mult1_31_result_add_0_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_31_result_add_0_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_31_result_add_0_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_31_result_add_0_1_a) + SIGNED(u0_m0_wo0_mtree_mult1_31_result_add_0_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_31_result_add_0_1_q <= u0_m0_wo0_mtree_mult1_31_result_add_0_1_o(45 downto 0);

    -- u0_m0_wo0_mtree_mult1_31_bjA5_q_const(CONSTANT,3014)@0
    u0_m0_wo0_mtree_mult1_31_bjA5_q_const_q <= "010010001100001010";

    -- u0_m0_wo0_mtree_mult1_31_im3(MULT,290)@11 + 2
    u0_m0_wo0_mtree_mult1_31_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_31_bjA5_q_const_q);
    u0_m0_wo0_mtree_mult1_31_im3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_31_bs2_merged_bit_select_b);
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

    -- u0_m0_wo0_mtree_mult1_31_align_17(BITSHIFT,304)@13
    u0_m0_wo0_mtree_mult1_31_align_17_qint <= u0_m0_wo0_mtree_mult1_31_im3_q & "00000000000000000";
    u0_m0_wo0_mtree_mult1_31_align_17_q <= u0_m0_wo0_mtree_mult1_31_align_17_qint(41 downto 0);

    -- u0_m0_wo0_mtree_mult1_31_im11(MULT,298)@11 + 2
    u0_m0_wo0_mtree_mult1_31_im11_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_31_bjA5_q_const_q);
    u0_m0_wo0_mtree_mult1_31_im11_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_31_bjB10_q);
    u0_m0_wo0_mtree_mult1_31_im11_reset <= areset;
    u0_m0_wo0_mtree_mult1_31_im11_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 18,
        lpm_widthp => 36,
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

    -- u0_m0_wo0_mtree_mult1_31_result_add_0_0(ADD,310)@13 + 1
    u0_m0_wo0_mtree_mult1_31_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((42 downto 36 => u0_m0_wo0_mtree_mult1_31_im11_q(35)) & u0_m0_wo0_mtree_mult1_31_im11_q));
    u0_m0_wo0_mtree_mult1_31_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((42 downto 42 => u0_m0_wo0_mtree_mult1_31_align_17_q(41)) & u0_m0_wo0_mtree_mult1_31_align_17_q));
    u0_m0_wo0_mtree_mult1_31_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_31_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_31_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_31_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_31_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_31_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_31_result_add_0_0_o(42 downto 0);

    -- u0_m0_wo0_mtree_mult1_31_result_add_1_0(ADD,312)@14 + 1
    u0_m0_wo0_mtree_mult1_31_result_add_1_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((46 downto 43 => u0_m0_wo0_mtree_mult1_31_result_add_0_0_q(42)) & u0_m0_wo0_mtree_mult1_31_result_add_0_0_q));
    u0_m0_wo0_mtree_mult1_31_result_add_1_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((46 downto 46 => u0_m0_wo0_mtree_mult1_31_result_add_0_1_q(45)) & u0_m0_wo0_mtree_mult1_31_result_add_0_1_q));
    u0_m0_wo0_mtree_mult1_31_result_add_1_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_31_result_add_1_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_31_result_add_1_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_31_result_add_1_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_31_result_add_1_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_31_result_add_1_0_q <= u0_m0_wo0_mtree_mult1_31_result_add_1_0_o(46 downto 0);

    -- u0_m0_wo0_mtree_mult1_29_im0_shift0(BITSHIFT,1081)@11
    u0_m0_wo0_mtree_mult1_29_im0_shift0_qint <= d_u0_m0_wo0_mtree_mult1_29_bs2_merged_bit_select_b_11_q & "00";
    u0_m0_wo0_mtree_mult1_29_im0_shift0_q <= u0_m0_wo0_mtree_mult1_29_im0_shift0_qint(8 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr6(DELAY,25)@10
    u0_m0_wo0_wi0_r0_delayr6 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr5_q, xout => u0_m0_wo0_wi0_r0_delayr6_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_wi0_r0_delayr7(DELAY,26)@10
    u0_m0_wo0_wi0_r0_delayr7 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr6_q, xout => u0_m0_wo0_wi0_r0_delayr7_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_29_bs2_merged_bit_select(BITSELECT,2986)@10
    u0_m0_wo0_mtree_mult1_29_bs2_merged_bit_select_b <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr7_q(23 downto 17));
    u0_m0_wo0_mtree_mult1_29_bs2_merged_bit_select_c <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr7_q(16 downto 0));

    -- d_u0_m0_wo0_mtree_mult1_29_bs2_merged_bit_select_b_11(DELAY,3069)@10 + 1
    d_u0_m0_wo0_mtree_mult1_29_bs2_merged_bit_select_b_11 : dspba_delay
    GENERIC MAP ( width => 7, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_mtree_mult1_29_bs2_merged_bit_select_b, xout => d_u0_m0_wo0_mtree_mult1_29_bs2_merged_bit_select_b_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_29_im0_add_1(ADD,1082)@11 + 1
    u0_m0_wo0_mtree_mult1_29_im0_add_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((9 downto 7 => d_u0_m0_wo0_mtree_mult1_29_bs2_merged_bit_select_b_11_q(6)) & d_u0_m0_wo0_mtree_mult1_29_bs2_merged_bit_select_b_11_q));
    u0_m0_wo0_mtree_mult1_29_im0_add_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((9 downto 9 => u0_m0_wo0_mtree_mult1_29_im0_shift0_q(8)) & u0_m0_wo0_mtree_mult1_29_im0_shift0_q));
    u0_m0_wo0_mtree_mult1_29_im0_add_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_29_im0_add_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_29_im0_add_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_29_im0_add_1_a) + SIGNED(u0_m0_wo0_mtree_mult1_29_im0_add_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_29_im0_add_1_q <= u0_m0_wo0_mtree_mult1_29_im0_add_1_o(9 downto 0);

    -- u0_m0_wo0_mtree_mult1_29_align_21(BITSHIFT,334)@12
    u0_m0_wo0_mtree_mult1_29_align_21_qint <= STD_LOGIC_VECTOR((10 downto 10 => u0_m0_wo0_mtree_mult1_29_im0_add_1_q(9)) & u0_m0_wo0_mtree_mult1_29_im0_add_1_q) & "0000000000000000000000000000000000";
    u0_m0_wo0_mtree_mult1_29_align_21_q <= u0_m0_wo0_mtree_mult1_29_align_21_qint(44 downto 0);

    -- u0_m0_wo0_mtree_mult1_29_im7_shift0(BITSHIFT,1094)@11
    u0_m0_wo0_mtree_mult1_29_im7_shift0_qint <= d_u0_m0_wo0_mtree_mult1_29_bjB10_q_11_q & "00";
    u0_m0_wo0_mtree_mult1_29_im7_shift0_q <= u0_m0_wo0_mtree_mult1_29_im7_shift0_qint(19 downto 0);

    -- u0_m0_wo0_mtree_mult1_29_bjB10(BITJOIN,323)@10
    u0_m0_wo0_mtree_mult1_29_bjB10_q <= GND_q & u0_m0_wo0_mtree_mult1_29_bs2_merged_bit_select_c;

    -- d_u0_m0_wo0_mtree_mult1_29_bjB10_q_11(DELAY,3041)@10 + 1
    d_u0_m0_wo0_mtree_mult1_29_bjB10_q_11 : dspba_delay
    GENERIC MAP ( width => 18, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_mtree_mult1_29_bjB10_q, xout => d_u0_m0_wo0_mtree_mult1_29_bjB10_q_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_29_im7_add_1(ADD,1095)@11 + 1
    u0_m0_wo0_mtree_mult1_29_im7_add_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((20 downto 18 => d_u0_m0_wo0_mtree_mult1_29_bjB10_q_11_q(17)) & d_u0_m0_wo0_mtree_mult1_29_bjB10_q_11_q));
    u0_m0_wo0_mtree_mult1_29_im7_add_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((20 downto 20 => u0_m0_wo0_mtree_mult1_29_im7_shift0_q(19)) & u0_m0_wo0_mtree_mult1_29_im7_shift0_q));
    u0_m0_wo0_mtree_mult1_29_im7_add_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_29_im7_add_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_29_im7_add_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_29_im7_add_1_a) + SIGNED(u0_m0_wo0_mtree_mult1_29_im7_add_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_29_im7_add_1_q <= u0_m0_wo0_mtree_mult1_29_im7_add_1_o(20 downto 0);

    -- u0_m0_wo0_mtree_mult1_29_align_19(BITSHIFT,332)@12
    u0_m0_wo0_mtree_mult1_29_align_19_qint <= STD_LOGIC_VECTOR((21 downto 21 => u0_m0_wo0_mtree_mult1_29_im7_add_1_q(20)) & u0_m0_wo0_mtree_mult1_29_im7_add_1_q) & "00000000000000000";
    u0_m0_wo0_mtree_mult1_29_align_19_q <= u0_m0_wo0_mtree_mult1_29_align_19_qint(38 downto 0);

    -- u0_m0_wo0_mtree_mult1_29_result_add_0_1(ADD,337)@12 + 1
    u0_m0_wo0_mtree_mult1_29_result_add_0_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((45 downto 39 => u0_m0_wo0_mtree_mult1_29_align_19_q(38)) & u0_m0_wo0_mtree_mult1_29_align_19_q));
    u0_m0_wo0_mtree_mult1_29_result_add_0_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((45 downto 45 => u0_m0_wo0_mtree_mult1_29_align_21_q(44)) & u0_m0_wo0_mtree_mult1_29_align_21_q));
    u0_m0_wo0_mtree_mult1_29_result_add_0_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_29_result_add_0_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_29_result_add_0_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_29_result_add_0_1_a) + SIGNED(u0_m0_wo0_mtree_mult1_29_result_add_0_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_29_result_add_0_1_q <= u0_m0_wo0_mtree_mult1_29_result_add_0_1_o(45 downto 0);

    -- u0_m0_wo0_mtree_mult1_29_bjA5_q_const(CONSTANT,3015)@0
    u0_m0_wo0_mtree_mult1_29_bjA5_q_const_q <= "000111100111001010";

    -- u0_m0_wo0_mtree_mult1_29_im3(MULT,316)@10 + 2
    u0_m0_wo0_mtree_mult1_29_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_29_bjA5_q_const_q);
    u0_m0_wo0_mtree_mult1_29_im3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_29_bs2_merged_bit_select_b);
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

    -- u0_m0_wo0_mtree_mult1_29_align_17(BITSHIFT,330)@12
    u0_m0_wo0_mtree_mult1_29_align_17_qint <= u0_m0_wo0_mtree_mult1_29_im3_q & "00000000000000000";
    u0_m0_wo0_mtree_mult1_29_align_17_q <= u0_m0_wo0_mtree_mult1_29_align_17_qint(41 downto 0);

    -- u0_m0_wo0_mtree_mult1_29_im11(MULT,324)@10 + 2
    u0_m0_wo0_mtree_mult1_29_im11_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_29_bjA5_q_const_q);
    u0_m0_wo0_mtree_mult1_29_im11_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_29_bjB10_q);
    u0_m0_wo0_mtree_mult1_29_im11_reset <= areset;
    u0_m0_wo0_mtree_mult1_29_im11_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 18,
        lpm_widthp => 36,
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

    -- u0_m0_wo0_mtree_mult1_29_result_add_0_0(ADD,336)@12 + 1
    u0_m0_wo0_mtree_mult1_29_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((42 downto 36 => u0_m0_wo0_mtree_mult1_29_im11_q(35)) & u0_m0_wo0_mtree_mult1_29_im11_q));
    u0_m0_wo0_mtree_mult1_29_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((42 downto 42 => u0_m0_wo0_mtree_mult1_29_align_17_q(41)) & u0_m0_wo0_mtree_mult1_29_align_17_q));
    u0_m0_wo0_mtree_mult1_29_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_29_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_29_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_29_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_29_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_29_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_29_result_add_0_0_o(42 downto 0);

    -- u0_m0_wo0_mtree_mult1_29_result_add_1_0(ADD,338)@13 + 1
    u0_m0_wo0_mtree_mult1_29_result_add_1_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((46 downto 43 => u0_m0_wo0_mtree_mult1_29_result_add_0_0_q(42)) & u0_m0_wo0_mtree_mult1_29_result_add_0_0_q));
    u0_m0_wo0_mtree_mult1_29_result_add_1_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((46 downto 46 => u0_m0_wo0_mtree_mult1_29_result_add_0_1_q(45)) & u0_m0_wo0_mtree_mult1_29_result_add_0_1_q));
    u0_m0_wo0_mtree_mult1_29_result_add_1_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_29_result_add_1_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_29_result_add_1_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_29_result_add_1_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_29_result_add_1_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_29_result_add_1_0_q <= u0_m0_wo0_mtree_mult1_29_result_add_1_0_o(46 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr8(DELAY,27)@10
    u0_m0_wo0_wi0_r0_delayr8 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr7_q, xout => u0_m0_wo0_wi0_r0_delayr8_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_28_bs2_merged_bit_select(BITSELECT,2987)@10
    u0_m0_wo0_mtree_mult1_28_bs2_merged_bit_select_b <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr8_q(23 downto 17));
    u0_m0_wo0_mtree_mult1_28_bs2_merged_bit_select_c <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr8_q(16 downto 0));

    -- d_u0_m0_wo0_mtree_mult1_28_bs2_merged_bit_select_b_12(DELAY,3070)@10 + 2
    d_u0_m0_wo0_mtree_mult1_28_bs2_merged_bit_select_b_12 : dspba_delay
    GENERIC MAP ( width => 7, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_mtree_mult1_28_bs2_merged_bit_select_b, xout => d_u0_m0_wo0_mtree_mult1_28_bs2_merged_bit_select_b_12_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_28_im0_shift0(BITSHIFT,1107)@12
    u0_m0_wo0_mtree_mult1_28_im0_shift0_qint <= d_u0_m0_wo0_mtree_mult1_28_bs2_merged_bit_select_b_12_q & "000";
    u0_m0_wo0_mtree_mult1_28_im0_shift0_q <= u0_m0_wo0_mtree_mult1_28_im0_shift0_qint(9 downto 0);

    -- u0_m0_wo0_mtree_mult1_28_align_21(BITSHIFT,360)@12
    u0_m0_wo0_mtree_mult1_28_align_21_qint <= STD_LOGIC_VECTOR((11 downto 10 => u0_m0_wo0_mtree_mult1_28_im0_shift0_q(9)) & u0_m0_wo0_mtree_mult1_28_im0_shift0_q) & "0000000000000000000000000000000000";
    u0_m0_wo0_mtree_mult1_28_align_21_q <= u0_m0_wo0_mtree_mult1_28_align_21_qint(45 downto 0);

    -- u0_m0_wo0_mtree_mult1_28_bjB10(BITJOIN,349)@10
    u0_m0_wo0_mtree_mult1_28_bjB10_q <= GND_q & u0_m0_wo0_mtree_mult1_28_bs2_merged_bit_select_c;

    -- d_u0_m0_wo0_mtree_mult1_28_bjB10_q_12(DELAY,3042)@10 + 2
    d_u0_m0_wo0_mtree_mult1_28_bjB10_q_12 : dspba_delay
    GENERIC MAP ( width => 18, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_mtree_mult1_28_bjB10_q, xout => d_u0_m0_wo0_mtree_mult1_28_bjB10_q_12_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_28_im7_shift0(BITSHIFT,1116)@12
    u0_m0_wo0_mtree_mult1_28_im7_shift0_qint <= d_u0_m0_wo0_mtree_mult1_28_bjB10_q_12_q & "000";
    u0_m0_wo0_mtree_mult1_28_im7_shift0_q <= u0_m0_wo0_mtree_mult1_28_im7_shift0_qint(20 downto 0);

    -- u0_m0_wo0_mtree_mult1_28_align_19(BITSHIFT,358)@12
    u0_m0_wo0_mtree_mult1_28_align_19_qint <= STD_LOGIC_VECTOR((22 downto 21 => u0_m0_wo0_mtree_mult1_28_im7_shift0_q(20)) & u0_m0_wo0_mtree_mult1_28_im7_shift0_q) & "00000000000000000";
    u0_m0_wo0_mtree_mult1_28_align_19_q <= u0_m0_wo0_mtree_mult1_28_align_19_qint(39 downto 0);

    -- u0_m0_wo0_mtree_mult1_28_result_add_0_1(ADD,363)@12 + 1
    u0_m0_wo0_mtree_mult1_28_result_add_0_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((46 downto 40 => u0_m0_wo0_mtree_mult1_28_align_19_q(39)) & u0_m0_wo0_mtree_mult1_28_align_19_q));
    u0_m0_wo0_mtree_mult1_28_result_add_0_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((46 downto 46 => u0_m0_wo0_mtree_mult1_28_align_21_q(45)) & u0_m0_wo0_mtree_mult1_28_align_21_q));
    u0_m0_wo0_mtree_mult1_28_result_add_0_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_28_result_add_0_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_28_result_add_0_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_28_result_add_0_1_a) + SIGNED(u0_m0_wo0_mtree_mult1_28_result_add_0_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_28_result_add_0_1_q <= u0_m0_wo0_mtree_mult1_28_result_add_0_1_o(46 downto 0);

    -- u0_m0_wo0_mtree_mult1_28_bjA5_q_const(CONSTANT,3016)@0
    u0_m0_wo0_mtree_mult1_28_bjA5_q_const_q <= "000100101111100001";

    -- u0_m0_wo0_mtree_mult1_28_im3(MULT,342)@10 + 2
    u0_m0_wo0_mtree_mult1_28_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_28_bjA5_q_const_q);
    u0_m0_wo0_mtree_mult1_28_im3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_28_bs2_merged_bit_select_b);
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

    -- u0_m0_wo0_mtree_mult1_28_align_17(BITSHIFT,356)@12
    u0_m0_wo0_mtree_mult1_28_align_17_qint <= u0_m0_wo0_mtree_mult1_28_im3_q & "00000000000000000";
    u0_m0_wo0_mtree_mult1_28_align_17_q <= u0_m0_wo0_mtree_mult1_28_align_17_qint(41 downto 0);

    -- u0_m0_wo0_mtree_mult1_28_im11(MULT,350)@10 + 2
    u0_m0_wo0_mtree_mult1_28_im11_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_28_bjA5_q_const_q);
    u0_m0_wo0_mtree_mult1_28_im11_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_28_bjB10_q);
    u0_m0_wo0_mtree_mult1_28_im11_reset <= areset;
    u0_m0_wo0_mtree_mult1_28_im11_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 18,
        lpm_widthp => 36,
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

    -- u0_m0_wo0_mtree_mult1_28_result_add_0_0(ADD,362)@12 + 1
    u0_m0_wo0_mtree_mult1_28_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((42 downto 36 => u0_m0_wo0_mtree_mult1_28_im11_q(35)) & u0_m0_wo0_mtree_mult1_28_im11_q));
    u0_m0_wo0_mtree_mult1_28_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((42 downto 42 => u0_m0_wo0_mtree_mult1_28_align_17_q(41)) & u0_m0_wo0_mtree_mult1_28_align_17_q));
    u0_m0_wo0_mtree_mult1_28_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_28_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_28_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_28_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_28_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_28_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_28_result_add_0_0_o(42 downto 0);

    -- u0_m0_wo0_mtree_mult1_28_result_add_1_0(ADD,364)@13 + 1
    u0_m0_wo0_mtree_mult1_28_result_add_1_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((47 downto 43 => u0_m0_wo0_mtree_mult1_28_result_add_0_0_q(42)) & u0_m0_wo0_mtree_mult1_28_result_add_0_0_q));
    u0_m0_wo0_mtree_mult1_28_result_add_1_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((47 downto 47 => u0_m0_wo0_mtree_mult1_28_result_add_0_1_q(46)) & u0_m0_wo0_mtree_mult1_28_result_add_0_1_q));
    u0_m0_wo0_mtree_mult1_28_result_add_1_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_28_result_add_1_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_28_result_add_1_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_28_result_add_1_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_28_result_add_1_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_28_result_add_1_0_q <= u0_m0_wo0_mtree_mult1_28_result_add_1_0_o(47 downto 0);

    -- u0_m0_wo0_mtree_add0_14(ADD,147)@14 + 1
    u0_m0_wo0_mtree_add0_14_a <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_28_result_add_1_0_q(46 downto 0));
    u0_m0_wo0_mtree_add0_14_b <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_29_result_add_1_0_q);
    u0_m0_wo0_mtree_add0_14_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_14_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_14_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_14_a) + SIGNED(u0_m0_wo0_mtree_add0_14_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_14_q <= u0_m0_wo0_mtree_add0_14_o(46 downto 0);

    -- u0_m0_wo0_mtree_add1_7(ADD,158)@15 + 1
    u0_m0_wo0_mtree_add1_7_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((47 downto 47 => u0_m0_wo0_mtree_add0_14_q(46)) & u0_m0_wo0_mtree_add0_14_q));
    u0_m0_wo0_mtree_add1_7_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((47 downto 47 => u0_m0_wo0_mtree_mult1_31_result_add_1_0_q(46)) & u0_m0_wo0_mtree_mult1_31_result_add_1_0_q));
    u0_m0_wo0_mtree_add1_7_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_7_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_7_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_7_a) + SIGNED(u0_m0_wo0_mtree_add1_7_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_7_q <= u0_m0_wo0_mtree_add1_7_o(47 downto 0);

    -- u0_m0_wo0_mtree_mult1_27_im0_shift0(BITSHIFT,1125)@12
    u0_m0_wo0_mtree_mult1_27_im0_shift0_qint <= d_u0_m0_wo0_mtree_mult1_27_bs2_merged_bit_select_b_12_q & "0";
    u0_m0_wo0_mtree_mult1_27_im0_shift0_q <= u0_m0_wo0_mtree_mult1_27_im0_shift0_qint(7 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr9(DELAY,28)@10
    u0_m0_wo0_wi0_r0_delayr9 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr8_q, xout => u0_m0_wo0_wi0_r0_delayr9_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_r0_delayr9_q_11(DELAY,3029)@10 + 1
    d_u0_m0_wo0_wi0_r0_delayr9_q_11 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr9_q, xout => d_u0_m0_wo0_wi0_r0_delayr9_q_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_27_bs2_merged_bit_select(BITSELECT,2988)@11
    u0_m0_wo0_mtree_mult1_27_bs2_merged_bit_select_b <= STD_LOGIC_VECTOR(d_u0_m0_wo0_wi0_r0_delayr9_q_11_q(23 downto 17));
    u0_m0_wo0_mtree_mult1_27_bs2_merged_bit_select_c <= STD_LOGIC_VECTOR(d_u0_m0_wo0_wi0_r0_delayr9_q_11_q(16 downto 0));

    -- d_u0_m0_wo0_mtree_mult1_27_bs2_merged_bit_select_b_12(DELAY,3071)@11 + 1
    d_u0_m0_wo0_mtree_mult1_27_bs2_merged_bit_select_b_12 : dspba_delay
    GENERIC MAP ( width => 7, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_mtree_mult1_27_bs2_merged_bit_select_b, xout => d_u0_m0_wo0_mtree_mult1_27_bs2_merged_bit_select_b_12_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_27_im0_add_1(ADD,1126)@12 + 1
    u0_m0_wo0_mtree_mult1_27_im0_add_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((8 downto 7 => d_u0_m0_wo0_mtree_mult1_27_bs2_merged_bit_select_b_12_q(6)) & d_u0_m0_wo0_mtree_mult1_27_bs2_merged_bit_select_b_12_q));
    u0_m0_wo0_mtree_mult1_27_im0_add_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((8 downto 8 => u0_m0_wo0_mtree_mult1_27_im0_shift0_q(7)) & u0_m0_wo0_mtree_mult1_27_im0_shift0_q));
    u0_m0_wo0_mtree_mult1_27_im0_add_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_27_im0_add_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_27_im0_add_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_27_im0_add_1_a) + SIGNED(u0_m0_wo0_mtree_mult1_27_im0_add_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_27_im0_add_1_q <= u0_m0_wo0_mtree_mult1_27_im0_add_1_o(8 downto 0);

    -- u0_m0_wo0_mtree_mult1_27_im0_shift2(BITSHIFT,1127)@13
    u0_m0_wo0_mtree_mult1_27_im0_shift2_qint <= u0_m0_wo0_mtree_mult1_27_im0_add_1_q & "0";
    u0_m0_wo0_mtree_mult1_27_im0_shift2_q <= u0_m0_wo0_mtree_mult1_27_im0_shift2_qint(9 downto 0);

    -- u0_m0_wo0_mtree_mult1_27_align_21(BITSHIFT,386)@13
    u0_m0_wo0_mtree_mult1_27_align_21_qint <= STD_LOGIC_VECTOR((10 downto 10 => u0_m0_wo0_mtree_mult1_27_im0_shift2_q(9)) & u0_m0_wo0_mtree_mult1_27_im0_shift2_q) & "0000000000000000000000000000000000";
    u0_m0_wo0_mtree_mult1_27_align_21_q <= u0_m0_wo0_mtree_mult1_27_align_21_qint(44 downto 0);

    -- u0_m0_wo0_mtree_mult1_27_im7_shift0(BITSHIFT,1138)@12
    u0_m0_wo0_mtree_mult1_27_im7_shift0_qint <= d_u0_m0_wo0_mtree_mult1_27_bjB10_q_12_q & "0";
    u0_m0_wo0_mtree_mult1_27_im7_shift0_q <= u0_m0_wo0_mtree_mult1_27_im7_shift0_qint(18 downto 0);

    -- u0_m0_wo0_mtree_mult1_27_bjB10(BITJOIN,375)@11
    u0_m0_wo0_mtree_mult1_27_bjB10_q <= GND_q & u0_m0_wo0_mtree_mult1_27_bs2_merged_bit_select_c;

    -- d_u0_m0_wo0_mtree_mult1_27_bjB10_q_12(DELAY,3043)@11 + 1
    d_u0_m0_wo0_mtree_mult1_27_bjB10_q_12 : dspba_delay
    GENERIC MAP ( width => 18, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_mtree_mult1_27_bjB10_q, xout => d_u0_m0_wo0_mtree_mult1_27_bjB10_q_12_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_27_im7_add_1(ADD,1139)@12 + 1
    u0_m0_wo0_mtree_mult1_27_im7_add_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((19 downto 18 => d_u0_m0_wo0_mtree_mult1_27_bjB10_q_12_q(17)) & d_u0_m0_wo0_mtree_mult1_27_bjB10_q_12_q));
    u0_m0_wo0_mtree_mult1_27_im7_add_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((19 downto 19 => u0_m0_wo0_mtree_mult1_27_im7_shift0_q(18)) & u0_m0_wo0_mtree_mult1_27_im7_shift0_q));
    u0_m0_wo0_mtree_mult1_27_im7_add_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_27_im7_add_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_27_im7_add_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_27_im7_add_1_a) + SIGNED(u0_m0_wo0_mtree_mult1_27_im7_add_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_27_im7_add_1_q <= u0_m0_wo0_mtree_mult1_27_im7_add_1_o(19 downto 0);

    -- u0_m0_wo0_mtree_mult1_27_im7_shift2(BITSHIFT,1140)@13
    u0_m0_wo0_mtree_mult1_27_im7_shift2_qint <= u0_m0_wo0_mtree_mult1_27_im7_add_1_q & "0";
    u0_m0_wo0_mtree_mult1_27_im7_shift2_q <= u0_m0_wo0_mtree_mult1_27_im7_shift2_qint(20 downto 0);

    -- u0_m0_wo0_mtree_mult1_27_align_19(BITSHIFT,384)@13
    u0_m0_wo0_mtree_mult1_27_align_19_qint <= STD_LOGIC_VECTOR((21 downto 21 => u0_m0_wo0_mtree_mult1_27_im7_shift2_q(20)) & u0_m0_wo0_mtree_mult1_27_im7_shift2_q) & "00000000000000000";
    u0_m0_wo0_mtree_mult1_27_align_19_q <= u0_m0_wo0_mtree_mult1_27_align_19_qint(38 downto 0);

    -- u0_m0_wo0_mtree_mult1_27_result_add_0_1(ADD,389)@13 + 1
    u0_m0_wo0_mtree_mult1_27_result_add_0_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((45 downto 39 => u0_m0_wo0_mtree_mult1_27_align_19_q(38)) & u0_m0_wo0_mtree_mult1_27_align_19_q));
    u0_m0_wo0_mtree_mult1_27_result_add_0_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((45 downto 45 => u0_m0_wo0_mtree_mult1_27_align_21_q(44)) & u0_m0_wo0_mtree_mult1_27_align_21_q));
    u0_m0_wo0_mtree_mult1_27_result_add_0_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_27_result_add_0_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_27_result_add_0_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_27_result_add_0_1_a) + SIGNED(u0_m0_wo0_mtree_mult1_27_result_add_0_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_27_result_add_0_1_q <= u0_m0_wo0_mtree_mult1_27_result_add_0_1_o(45 downto 0);

    -- u0_m0_wo0_mtree_mult1_27_bjA5_q_const(CONSTANT,3017)@0
    u0_m0_wo0_mtree_mult1_27_bjA5_q_const_q <= "001100110111000001";

    -- u0_m0_wo0_mtree_mult1_27_im3(MULT,368)@11 + 2
    u0_m0_wo0_mtree_mult1_27_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_27_bjA5_q_const_q);
    u0_m0_wo0_mtree_mult1_27_im3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_27_bs2_merged_bit_select_b);
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

    -- u0_m0_wo0_mtree_mult1_27_align_17(BITSHIFT,382)@13
    u0_m0_wo0_mtree_mult1_27_align_17_qint <= u0_m0_wo0_mtree_mult1_27_im3_q & "00000000000000000";
    u0_m0_wo0_mtree_mult1_27_align_17_q <= u0_m0_wo0_mtree_mult1_27_align_17_qint(41 downto 0);

    -- u0_m0_wo0_mtree_mult1_27_im11(MULT,376)@11 + 2
    u0_m0_wo0_mtree_mult1_27_im11_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_27_bjA5_q_const_q);
    u0_m0_wo0_mtree_mult1_27_im11_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_27_bjB10_q);
    u0_m0_wo0_mtree_mult1_27_im11_reset <= areset;
    u0_m0_wo0_mtree_mult1_27_im11_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 18,
        lpm_widthp => 36,
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

    -- u0_m0_wo0_mtree_mult1_27_result_add_0_0(ADD,388)@13 + 1
    u0_m0_wo0_mtree_mult1_27_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((42 downto 36 => u0_m0_wo0_mtree_mult1_27_im11_q(35)) & u0_m0_wo0_mtree_mult1_27_im11_q));
    u0_m0_wo0_mtree_mult1_27_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((42 downto 42 => u0_m0_wo0_mtree_mult1_27_align_17_q(41)) & u0_m0_wo0_mtree_mult1_27_align_17_q));
    u0_m0_wo0_mtree_mult1_27_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_27_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_27_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_27_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_27_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_27_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_27_result_add_0_0_o(42 downto 0);

    -- u0_m0_wo0_mtree_mult1_27_result_add_1_0(ADD,390)@14 + 1
    u0_m0_wo0_mtree_mult1_27_result_add_1_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((46 downto 43 => u0_m0_wo0_mtree_mult1_27_result_add_0_0_q(42)) & u0_m0_wo0_mtree_mult1_27_result_add_0_0_q));
    u0_m0_wo0_mtree_mult1_27_result_add_1_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((46 downto 46 => u0_m0_wo0_mtree_mult1_27_result_add_0_1_q(45)) & u0_m0_wo0_mtree_mult1_27_result_add_0_1_q));
    u0_m0_wo0_mtree_mult1_27_result_add_1_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_27_result_add_1_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_27_result_add_1_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_27_result_add_1_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_27_result_add_1_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_27_result_add_1_0_q <= u0_m0_wo0_mtree_mult1_27_result_add_1_0_o(46 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr10(DELAY,29)@10
    u0_m0_wo0_wi0_r0_delayr10 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr9_q, xout => u0_m0_wo0_wi0_r0_delayr10_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_wi0_r0_delayr11(DELAY,30)@10
    u0_m0_wo0_wi0_r0_delayr11 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr10_q, xout => u0_m0_wo0_wi0_r0_delayr11_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_25_bs2_merged_bit_select(BITSELECT,2989)@10
    u0_m0_wo0_mtree_mult1_25_bs2_merged_bit_select_b <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr11_q(23 downto 17));
    u0_m0_wo0_mtree_mult1_25_bs2_merged_bit_select_c <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr11_q(16 downto 0));

    -- d_u0_m0_wo0_mtree_mult1_25_bs2_merged_bit_select_b_11(DELAY,3072)@10 + 1
    d_u0_m0_wo0_mtree_mult1_25_bs2_merged_bit_select_b_11 : dspba_delay
    GENERIC MAP ( width => 7, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_mtree_mult1_25_bs2_merged_bit_select_b, xout => d_u0_m0_wo0_mtree_mult1_25_bs2_merged_bit_select_b_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_25_im0_shift1(BITSHIFT,1152)@11
    u0_m0_wo0_mtree_mult1_25_im0_shift1_qint <= d_u0_m0_wo0_mtree_mult1_25_bs2_merged_bit_select_b_11_q & "000";
    u0_m0_wo0_mtree_mult1_25_im0_shift1_q <= u0_m0_wo0_mtree_mult1_25_im0_shift1_qint(9 downto 0);

    -- u0_m0_wo0_mtree_mult1_25_im0_sub_0(SUB,1151)@10 + 1
    u0_m0_wo0_mtree_mult1_25_im0_sub_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((7 downto 1 => GND_q(0)) & GND_q));
    u0_m0_wo0_mtree_mult1_25_im0_sub_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((7 downto 7 => u0_m0_wo0_mtree_mult1_25_bs2_merged_bit_select_b(6)) & u0_m0_wo0_mtree_mult1_25_bs2_merged_bit_select_b));
    u0_m0_wo0_mtree_mult1_25_im0_sub_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_25_im0_sub_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_25_im0_sub_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_25_im0_sub_0_a) - SIGNED(u0_m0_wo0_mtree_mult1_25_im0_sub_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_25_im0_sub_0_q <= u0_m0_wo0_mtree_mult1_25_im0_sub_0_o(7 downto 0);

    -- u0_m0_wo0_mtree_mult1_25_im0_sub_2(SUB,1153)@11 + 1
    u0_m0_wo0_mtree_mult1_25_im0_sub_2_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((10 downto 8 => u0_m0_wo0_mtree_mult1_25_im0_sub_0_q(7)) & u0_m0_wo0_mtree_mult1_25_im0_sub_0_q));
    u0_m0_wo0_mtree_mult1_25_im0_sub_2_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((10 downto 10 => u0_m0_wo0_mtree_mult1_25_im0_shift1_q(9)) & u0_m0_wo0_mtree_mult1_25_im0_shift1_q));
    u0_m0_wo0_mtree_mult1_25_im0_sub_2_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_25_im0_sub_2_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_25_im0_sub_2_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_25_im0_sub_2_a) - SIGNED(u0_m0_wo0_mtree_mult1_25_im0_sub_2_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_25_im0_sub_2_q <= u0_m0_wo0_mtree_mult1_25_im0_sub_2_o(10 downto 0);

    -- u0_m0_wo0_mtree_mult1_25_align_21(BITSHIFT,412)@12
    u0_m0_wo0_mtree_mult1_25_align_21_qint <= STD_LOGIC_VECTOR((11 downto 11 => u0_m0_wo0_mtree_mult1_25_im0_sub_2_q(10)) & u0_m0_wo0_mtree_mult1_25_im0_sub_2_q) & "0000000000000000000000000000000000";
    u0_m0_wo0_mtree_mult1_25_align_21_q <= u0_m0_wo0_mtree_mult1_25_align_21_qint(45 downto 0);

    -- u0_m0_wo0_mtree_mult1_25_bjB10(BITJOIN,401)@10
    u0_m0_wo0_mtree_mult1_25_bjB10_q <= GND_q & u0_m0_wo0_mtree_mult1_25_bs2_merged_bit_select_c;

    -- d_u0_m0_wo0_mtree_mult1_25_bjB10_q_11(DELAY,3044)@10 + 1
    d_u0_m0_wo0_mtree_mult1_25_bjB10_q_11 : dspba_delay
    GENERIC MAP ( width => 18, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_mtree_mult1_25_bjB10_q, xout => d_u0_m0_wo0_mtree_mult1_25_bjB10_q_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_25_im7_shift1(BITSHIFT,1170)@11
    u0_m0_wo0_mtree_mult1_25_im7_shift1_qint <= d_u0_m0_wo0_mtree_mult1_25_bjB10_q_11_q & "000";
    u0_m0_wo0_mtree_mult1_25_im7_shift1_q <= u0_m0_wo0_mtree_mult1_25_im7_shift1_qint(20 downto 0);

    -- u0_m0_wo0_mtree_mult1_25_im7_sub_0(SUB,1169)@10 + 1
    u0_m0_wo0_mtree_mult1_25_im7_sub_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((18 downto 1 => GND_q(0)) & GND_q));
    u0_m0_wo0_mtree_mult1_25_im7_sub_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((18 downto 18 => u0_m0_wo0_mtree_mult1_25_bjB10_q(17)) & u0_m0_wo0_mtree_mult1_25_bjB10_q));
    u0_m0_wo0_mtree_mult1_25_im7_sub_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_25_im7_sub_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_25_im7_sub_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_25_im7_sub_0_a) - SIGNED(u0_m0_wo0_mtree_mult1_25_im7_sub_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_25_im7_sub_0_q <= u0_m0_wo0_mtree_mult1_25_im7_sub_0_o(18 downto 0);

    -- u0_m0_wo0_mtree_mult1_25_im7_sub_2(SUB,1171)@11 + 1
    u0_m0_wo0_mtree_mult1_25_im7_sub_2_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 19 => u0_m0_wo0_mtree_mult1_25_im7_sub_0_q(18)) & u0_m0_wo0_mtree_mult1_25_im7_sub_0_q));
    u0_m0_wo0_mtree_mult1_25_im7_sub_2_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 21 => u0_m0_wo0_mtree_mult1_25_im7_shift1_q(20)) & u0_m0_wo0_mtree_mult1_25_im7_shift1_q));
    u0_m0_wo0_mtree_mult1_25_im7_sub_2_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_25_im7_sub_2_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_25_im7_sub_2_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_25_im7_sub_2_a) - SIGNED(u0_m0_wo0_mtree_mult1_25_im7_sub_2_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_25_im7_sub_2_q <= u0_m0_wo0_mtree_mult1_25_im7_sub_2_o(21 downto 0);

    -- u0_m0_wo0_mtree_mult1_25_align_19(BITSHIFT,410)@12
    u0_m0_wo0_mtree_mult1_25_align_19_qint <= STD_LOGIC_VECTOR((22 downto 22 => u0_m0_wo0_mtree_mult1_25_im7_sub_2_q(21)) & u0_m0_wo0_mtree_mult1_25_im7_sub_2_q) & "00000000000000000";
    u0_m0_wo0_mtree_mult1_25_align_19_q <= u0_m0_wo0_mtree_mult1_25_align_19_qint(39 downto 0);

    -- u0_m0_wo0_mtree_mult1_25_result_add_0_1(ADD,415)@12 + 1
    u0_m0_wo0_mtree_mult1_25_result_add_0_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((46 downto 40 => u0_m0_wo0_mtree_mult1_25_align_19_q(39)) & u0_m0_wo0_mtree_mult1_25_align_19_q));
    u0_m0_wo0_mtree_mult1_25_result_add_0_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((46 downto 46 => u0_m0_wo0_mtree_mult1_25_align_21_q(45)) & u0_m0_wo0_mtree_mult1_25_align_21_q));
    u0_m0_wo0_mtree_mult1_25_result_add_0_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_25_result_add_0_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_25_result_add_0_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_25_result_add_0_1_a) + SIGNED(u0_m0_wo0_mtree_mult1_25_result_add_0_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_25_result_add_0_1_q <= u0_m0_wo0_mtree_mult1_25_result_add_0_1_o(46 downto 0);

    -- u0_m0_wo0_mtree_mult1_25_bjA5_q_const(CONSTANT,3018)@0
    u0_m0_wo0_mtree_mult1_25_bjA5_q_const_q <= "011000100110101010";

    -- u0_m0_wo0_mtree_mult1_25_im3(MULT,394)@10 + 2
    u0_m0_wo0_mtree_mult1_25_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_25_bjA5_q_const_q);
    u0_m0_wo0_mtree_mult1_25_im3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_25_bs2_merged_bit_select_b);
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

    -- u0_m0_wo0_mtree_mult1_25_align_17(BITSHIFT,408)@12
    u0_m0_wo0_mtree_mult1_25_align_17_qint <= u0_m0_wo0_mtree_mult1_25_im3_q & "00000000000000000";
    u0_m0_wo0_mtree_mult1_25_align_17_q <= u0_m0_wo0_mtree_mult1_25_align_17_qint(41 downto 0);

    -- u0_m0_wo0_mtree_mult1_25_im11(MULT,402)@10 + 2
    u0_m0_wo0_mtree_mult1_25_im11_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_25_bjA5_q_const_q);
    u0_m0_wo0_mtree_mult1_25_im11_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_25_bjB10_q);
    u0_m0_wo0_mtree_mult1_25_im11_reset <= areset;
    u0_m0_wo0_mtree_mult1_25_im11_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 18,
        lpm_widthp => 36,
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

    -- u0_m0_wo0_mtree_mult1_25_result_add_0_0(ADD,414)@12 + 1
    u0_m0_wo0_mtree_mult1_25_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((42 downto 36 => u0_m0_wo0_mtree_mult1_25_im11_q(35)) & u0_m0_wo0_mtree_mult1_25_im11_q));
    u0_m0_wo0_mtree_mult1_25_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((42 downto 42 => u0_m0_wo0_mtree_mult1_25_align_17_q(41)) & u0_m0_wo0_mtree_mult1_25_align_17_q));
    u0_m0_wo0_mtree_mult1_25_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_25_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_25_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_25_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_25_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_25_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_25_result_add_0_0_o(42 downto 0);

    -- u0_m0_wo0_mtree_mult1_25_result_add_1_0(ADD,416)@13 + 1
    u0_m0_wo0_mtree_mult1_25_result_add_1_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((47 downto 43 => u0_m0_wo0_mtree_mult1_25_result_add_0_0_q(42)) & u0_m0_wo0_mtree_mult1_25_result_add_0_0_q));
    u0_m0_wo0_mtree_mult1_25_result_add_1_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((47 downto 47 => u0_m0_wo0_mtree_mult1_25_result_add_0_1_q(46)) & u0_m0_wo0_mtree_mult1_25_result_add_0_1_q));
    u0_m0_wo0_mtree_mult1_25_result_add_1_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_25_result_add_1_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_25_result_add_1_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_25_result_add_1_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_25_result_add_1_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_25_result_add_1_0_q <= u0_m0_wo0_mtree_mult1_25_result_add_1_0_o(47 downto 0);

    -- u0_m0_wo0_mtree_mult1_24_im0_shift0(BITSHIFT,1187)@11
    u0_m0_wo0_mtree_mult1_24_im0_shift0_qint <= d_u0_m0_wo0_mtree_mult1_24_bs2_merged_bit_select_b_11_q & "000";
    u0_m0_wo0_mtree_mult1_24_im0_shift0_q <= u0_m0_wo0_mtree_mult1_24_im0_shift0_qint(9 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr12(DELAY,31)@10
    u0_m0_wo0_wi0_r0_delayr12 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr11_q, xout => u0_m0_wo0_wi0_r0_delayr12_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_24_bs2_merged_bit_select(BITSELECT,2990)@10
    u0_m0_wo0_mtree_mult1_24_bs2_merged_bit_select_b <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr12_q(23 downto 17));
    u0_m0_wo0_mtree_mult1_24_bs2_merged_bit_select_c <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr12_q(16 downto 0));

    -- d_u0_m0_wo0_mtree_mult1_24_bs2_merged_bit_select_b_11(DELAY,3073)@10 + 1
    d_u0_m0_wo0_mtree_mult1_24_bs2_merged_bit_select_b_11 : dspba_delay
    GENERIC MAP ( width => 7, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_mtree_mult1_24_bs2_merged_bit_select_b, xout => d_u0_m0_wo0_mtree_mult1_24_bs2_merged_bit_select_b_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_24_im0_sub_1(SUB,1188)@11 + 1
    u0_m0_wo0_mtree_mult1_24_im0_sub_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((10 downto 7 => d_u0_m0_wo0_mtree_mult1_24_bs2_merged_bit_select_b_11_q(6)) & d_u0_m0_wo0_mtree_mult1_24_bs2_merged_bit_select_b_11_q));
    u0_m0_wo0_mtree_mult1_24_im0_sub_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((10 downto 10 => u0_m0_wo0_mtree_mult1_24_im0_shift0_q(9)) & u0_m0_wo0_mtree_mult1_24_im0_shift0_q));
    u0_m0_wo0_mtree_mult1_24_im0_sub_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_24_im0_sub_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_24_im0_sub_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_24_im0_sub_1_a) - SIGNED(u0_m0_wo0_mtree_mult1_24_im0_sub_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_24_im0_sub_1_q <= u0_m0_wo0_mtree_mult1_24_im0_sub_1_o(10 downto 0);

    -- u0_m0_wo0_mtree_mult1_24_im0_shift2(BITSHIFT,1189)@12
    u0_m0_wo0_mtree_mult1_24_im0_shift2_qint <= u0_m0_wo0_mtree_mult1_24_im0_sub_1_q & "0";
    u0_m0_wo0_mtree_mult1_24_im0_shift2_q <= u0_m0_wo0_mtree_mult1_24_im0_shift2_qint(11 downto 0);

    -- u0_m0_wo0_mtree_mult1_24_align_21(BITSHIFT,438)@12
    u0_m0_wo0_mtree_mult1_24_align_21_qint <= u0_m0_wo0_mtree_mult1_24_im0_shift2_q & "0000000000000000000000000000000000";
    u0_m0_wo0_mtree_mult1_24_align_21_q <= u0_m0_wo0_mtree_mult1_24_align_21_qint(45 downto 0);

    -- u0_m0_wo0_mtree_mult1_24_im7_shift0(BITSHIFT,1203)@11
    u0_m0_wo0_mtree_mult1_24_im7_shift0_qint <= d_u0_m0_wo0_mtree_mult1_24_bjB10_q_11_q & "000";
    u0_m0_wo0_mtree_mult1_24_im7_shift0_q <= u0_m0_wo0_mtree_mult1_24_im7_shift0_qint(20 downto 0);

    -- u0_m0_wo0_mtree_mult1_24_bjB10(BITJOIN,427)@10
    u0_m0_wo0_mtree_mult1_24_bjB10_q <= GND_q & u0_m0_wo0_mtree_mult1_24_bs2_merged_bit_select_c;

    -- d_u0_m0_wo0_mtree_mult1_24_bjB10_q_11(DELAY,3045)@10 + 1
    d_u0_m0_wo0_mtree_mult1_24_bjB10_q_11 : dspba_delay
    GENERIC MAP ( width => 18, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_mtree_mult1_24_bjB10_q, xout => d_u0_m0_wo0_mtree_mult1_24_bjB10_q_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_24_im7_sub_1(SUB,1204)@11 + 1
    u0_m0_wo0_mtree_mult1_24_im7_sub_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 18 => d_u0_m0_wo0_mtree_mult1_24_bjB10_q_11_q(17)) & d_u0_m0_wo0_mtree_mult1_24_bjB10_q_11_q));
    u0_m0_wo0_mtree_mult1_24_im7_sub_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 21 => u0_m0_wo0_mtree_mult1_24_im7_shift0_q(20)) & u0_m0_wo0_mtree_mult1_24_im7_shift0_q));
    u0_m0_wo0_mtree_mult1_24_im7_sub_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_24_im7_sub_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_24_im7_sub_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_24_im7_sub_1_a) - SIGNED(u0_m0_wo0_mtree_mult1_24_im7_sub_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_24_im7_sub_1_q <= u0_m0_wo0_mtree_mult1_24_im7_sub_1_o(21 downto 0);

    -- u0_m0_wo0_mtree_mult1_24_im7_shift2(BITSHIFT,1205)@12
    u0_m0_wo0_mtree_mult1_24_im7_shift2_qint <= u0_m0_wo0_mtree_mult1_24_im7_sub_1_q & "0";
    u0_m0_wo0_mtree_mult1_24_im7_shift2_q <= u0_m0_wo0_mtree_mult1_24_im7_shift2_qint(22 downto 0);

    -- u0_m0_wo0_mtree_mult1_24_align_19(BITSHIFT,436)@12
    u0_m0_wo0_mtree_mult1_24_align_19_qint <= u0_m0_wo0_mtree_mult1_24_im7_shift2_q & "00000000000000000";
    u0_m0_wo0_mtree_mult1_24_align_19_q <= u0_m0_wo0_mtree_mult1_24_align_19_qint(39 downto 0);

    -- u0_m0_wo0_mtree_mult1_24_result_add_0_1(ADD,441)@12 + 1
    u0_m0_wo0_mtree_mult1_24_result_add_0_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((46 downto 40 => u0_m0_wo0_mtree_mult1_24_align_19_q(39)) & u0_m0_wo0_mtree_mult1_24_align_19_q));
    u0_m0_wo0_mtree_mult1_24_result_add_0_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((46 downto 46 => u0_m0_wo0_mtree_mult1_24_align_21_q(45)) & u0_m0_wo0_mtree_mult1_24_align_21_q));
    u0_m0_wo0_mtree_mult1_24_result_add_0_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_24_result_add_0_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_24_result_add_0_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_24_result_add_0_1_a) + SIGNED(u0_m0_wo0_mtree_mult1_24_result_add_0_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_24_result_add_0_1_q <= u0_m0_wo0_mtree_mult1_24_result_add_0_1_o(46 downto 0);

    -- u0_m0_wo0_mtree_mult1_24_bjA5_q_const(CONSTANT,3019)@0
    u0_m0_wo0_mtree_mult1_24_bjA5_q_const_q <= "001101011010101000";

    -- u0_m0_wo0_mtree_mult1_24_im3(MULT,420)@10 + 2
    u0_m0_wo0_mtree_mult1_24_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_24_bjA5_q_const_q);
    u0_m0_wo0_mtree_mult1_24_im3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_24_bs2_merged_bit_select_b);
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

    -- u0_m0_wo0_mtree_mult1_24_align_17(BITSHIFT,434)@12
    u0_m0_wo0_mtree_mult1_24_align_17_qint <= u0_m0_wo0_mtree_mult1_24_im3_q & "00000000000000000";
    u0_m0_wo0_mtree_mult1_24_align_17_q <= u0_m0_wo0_mtree_mult1_24_align_17_qint(41 downto 0);

    -- u0_m0_wo0_mtree_mult1_24_im11(MULT,428)@10 + 2
    u0_m0_wo0_mtree_mult1_24_im11_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_24_bjA5_q_const_q);
    u0_m0_wo0_mtree_mult1_24_im11_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_24_bjB10_q);
    u0_m0_wo0_mtree_mult1_24_im11_reset <= areset;
    u0_m0_wo0_mtree_mult1_24_im11_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 18,
        lpm_widthp => 36,
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

    -- u0_m0_wo0_mtree_mult1_24_result_add_0_0(ADD,440)@12 + 1
    u0_m0_wo0_mtree_mult1_24_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((42 downto 36 => u0_m0_wo0_mtree_mult1_24_im11_q(35)) & u0_m0_wo0_mtree_mult1_24_im11_q));
    u0_m0_wo0_mtree_mult1_24_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((42 downto 42 => u0_m0_wo0_mtree_mult1_24_align_17_q(41)) & u0_m0_wo0_mtree_mult1_24_align_17_q));
    u0_m0_wo0_mtree_mult1_24_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_24_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_24_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_24_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_24_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_24_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_24_result_add_0_0_o(42 downto 0);

    -- u0_m0_wo0_mtree_mult1_24_result_add_1_0(ADD,442)@13 + 1
    u0_m0_wo0_mtree_mult1_24_result_add_1_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((47 downto 43 => u0_m0_wo0_mtree_mult1_24_result_add_0_0_q(42)) & u0_m0_wo0_mtree_mult1_24_result_add_0_0_q));
    u0_m0_wo0_mtree_mult1_24_result_add_1_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((47 downto 47 => u0_m0_wo0_mtree_mult1_24_result_add_0_1_q(46)) & u0_m0_wo0_mtree_mult1_24_result_add_0_1_q));
    u0_m0_wo0_mtree_mult1_24_result_add_1_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_24_result_add_1_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_24_result_add_1_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_24_result_add_1_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_24_result_add_1_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_24_result_add_1_0_q <= u0_m0_wo0_mtree_mult1_24_result_add_1_0_o(47 downto 0);

    -- u0_m0_wo0_mtree_add0_12(ADD,145)@14 + 1
    u0_m0_wo0_mtree_add0_12_a <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_24_result_add_1_0_q(46 downto 0));
    u0_m0_wo0_mtree_add0_12_b <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_25_result_add_1_0_q(46 downto 0));
    u0_m0_wo0_mtree_add0_12_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_12_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_12_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_12_a) + SIGNED(u0_m0_wo0_mtree_add0_12_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_12_q <= u0_m0_wo0_mtree_add0_12_o(46 downto 0);

    -- u0_m0_wo0_mtree_add1_6(ADD,157)@15 + 1
    u0_m0_wo0_mtree_add1_6_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((47 downto 47 => u0_m0_wo0_mtree_add0_12_q(46)) & u0_m0_wo0_mtree_add0_12_q));
    u0_m0_wo0_mtree_add1_6_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((47 downto 47 => u0_m0_wo0_mtree_mult1_27_result_add_1_0_q(46)) & u0_m0_wo0_mtree_mult1_27_result_add_1_0_q));
    u0_m0_wo0_mtree_add1_6_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_6_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_6_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_6_a) + SIGNED(u0_m0_wo0_mtree_add1_6_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_6_q <= u0_m0_wo0_mtree_add1_6_o(47 downto 0);

    -- u0_m0_wo0_mtree_add2_3(ADD,163)@16 + 1
    u0_m0_wo0_mtree_add2_3_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 48 => u0_m0_wo0_mtree_add1_6_q(47)) & u0_m0_wo0_mtree_add1_6_q));
    u0_m0_wo0_mtree_add2_3_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 48 => u0_m0_wo0_mtree_add1_7_q(47)) & u0_m0_wo0_mtree_add1_7_q));
    u0_m0_wo0_mtree_add2_3_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add2_3_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add2_3_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add2_3_a) + SIGNED(u0_m0_wo0_mtree_add2_3_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add2_3_q <= u0_m0_wo0_mtree_add2_3_o(48 downto 0);

    -- u0_m0_wo0_mtree_mult1_23_im0_shift0(BITSHIFT,1219)@12
    u0_m0_wo0_mtree_mult1_23_im0_shift0_qint <= d_u0_m0_wo0_mtree_mult1_23_bs2_merged_bit_select_b_12_q & "00";
    u0_m0_wo0_mtree_mult1_23_im0_shift0_q <= u0_m0_wo0_mtree_mult1_23_im0_shift0_qint(8 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr13(DELAY,32)@10
    u0_m0_wo0_wi0_r0_delayr13 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr12_q, xout => u0_m0_wo0_wi0_r0_delayr13_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_r0_delayr13_q_11(DELAY,3030)@10 + 1
    d_u0_m0_wo0_wi0_r0_delayr13_q_11 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr13_q, xout => d_u0_m0_wo0_wi0_r0_delayr13_q_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_23_bs2_merged_bit_select(BITSELECT,2991)@11
    u0_m0_wo0_mtree_mult1_23_bs2_merged_bit_select_b <= STD_LOGIC_VECTOR(d_u0_m0_wo0_wi0_r0_delayr13_q_11_q(23 downto 17));
    u0_m0_wo0_mtree_mult1_23_bs2_merged_bit_select_c <= STD_LOGIC_VECTOR(d_u0_m0_wo0_wi0_r0_delayr13_q_11_q(16 downto 0));

    -- d_u0_m0_wo0_mtree_mult1_23_bs2_merged_bit_select_b_12(DELAY,3074)@11 + 1
    d_u0_m0_wo0_mtree_mult1_23_bs2_merged_bit_select_b_12 : dspba_delay
    GENERIC MAP ( width => 7, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_mtree_mult1_23_bs2_merged_bit_select_b, xout => d_u0_m0_wo0_mtree_mult1_23_bs2_merged_bit_select_b_12_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_23_im0_sub_1(SUB,1220)@12 + 1
    u0_m0_wo0_mtree_mult1_23_im0_sub_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((9 downto 7 => d_u0_m0_wo0_mtree_mult1_23_bs2_merged_bit_select_b_12_q(6)) & d_u0_m0_wo0_mtree_mult1_23_bs2_merged_bit_select_b_12_q));
    u0_m0_wo0_mtree_mult1_23_im0_sub_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((9 downto 9 => u0_m0_wo0_mtree_mult1_23_im0_shift0_q(8)) & u0_m0_wo0_mtree_mult1_23_im0_shift0_q));
    u0_m0_wo0_mtree_mult1_23_im0_sub_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_23_im0_sub_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_23_im0_sub_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_23_im0_sub_1_a) - SIGNED(u0_m0_wo0_mtree_mult1_23_im0_sub_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_23_im0_sub_1_q <= u0_m0_wo0_mtree_mult1_23_im0_sub_1_o(9 downto 0);

    -- u0_m0_wo0_mtree_mult1_23_im0_shift2(BITSHIFT,1221)@13
    u0_m0_wo0_mtree_mult1_23_im0_shift2_qint <= u0_m0_wo0_mtree_mult1_23_im0_sub_1_q & "00";
    u0_m0_wo0_mtree_mult1_23_im0_shift2_q <= u0_m0_wo0_mtree_mult1_23_im0_shift2_qint(11 downto 0);

    -- u0_m0_wo0_mtree_mult1_23_align_21(BITSHIFT,464)@13
    u0_m0_wo0_mtree_mult1_23_align_21_qint <= u0_m0_wo0_mtree_mult1_23_im0_shift2_q & "0000000000000000000000000000000000";
    u0_m0_wo0_mtree_mult1_23_align_21_q <= u0_m0_wo0_mtree_mult1_23_align_21_qint(45 downto 0);

    -- u0_m0_wo0_mtree_mult1_23_im7_shift0(BITSHIFT,1229)@12
    u0_m0_wo0_mtree_mult1_23_im7_shift0_qint <= d_u0_m0_wo0_mtree_mult1_23_bjB10_q_12_q & "00";
    u0_m0_wo0_mtree_mult1_23_im7_shift0_q <= u0_m0_wo0_mtree_mult1_23_im7_shift0_qint(19 downto 0);

    -- u0_m0_wo0_mtree_mult1_23_bjB10(BITJOIN,453)@11
    u0_m0_wo0_mtree_mult1_23_bjB10_q <= GND_q & u0_m0_wo0_mtree_mult1_23_bs2_merged_bit_select_c;

    -- d_u0_m0_wo0_mtree_mult1_23_bjB10_q_12(DELAY,3046)@11 + 1
    d_u0_m0_wo0_mtree_mult1_23_bjB10_q_12 : dspba_delay
    GENERIC MAP ( width => 18, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_mtree_mult1_23_bjB10_q, xout => d_u0_m0_wo0_mtree_mult1_23_bjB10_q_12_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_23_im7_sub_1(SUB,1230)@12 + 1
    u0_m0_wo0_mtree_mult1_23_im7_sub_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((20 downto 18 => d_u0_m0_wo0_mtree_mult1_23_bjB10_q_12_q(17)) & d_u0_m0_wo0_mtree_mult1_23_bjB10_q_12_q));
    u0_m0_wo0_mtree_mult1_23_im7_sub_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((20 downto 20 => u0_m0_wo0_mtree_mult1_23_im7_shift0_q(19)) & u0_m0_wo0_mtree_mult1_23_im7_shift0_q));
    u0_m0_wo0_mtree_mult1_23_im7_sub_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_23_im7_sub_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_23_im7_sub_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_23_im7_sub_1_a) - SIGNED(u0_m0_wo0_mtree_mult1_23_im7_sub_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_23_im7_sub_1_q <= u0_m0_wo0_mtree_mult1_23_im7_sub_1_o(20 downto 0);

    -- u0_m0_wo0_mtree_mult1_23_im7_shift2(BITSHIFT,1231)@13
    u0_m0_wo0_mtree_mult1_23_im7_shift2_qint <= u0_m0_wo0_mtree_mult1_23_im7_sub_1_q & "00";
    u0_m0_wo0_mtree_mult1_23_im7_shift2_q <= u0_m0_wo0_mtree_mult1_23_im7_shift2_qint(22 downto 0);

    -- u0_m0_wo0_mtree_mult1_23_align_19(BITSHIFT,462)@13
    u0_m0_wo0_mtree_mult1_23_align_19_qint <= u0_m0_wo0_mtree_mult1_23_im7_shift2_q & "00000000000000000";
    u0_m0_wo0_mtree_mult1_23_align_19_q <= u0_m0_wo0_mtree_mult1_23_align_19_qint(39 downto 0);

    -- u0_m0_wo0_mtree_mult1_23_result_add_0_1(ADD,467)@13 + 1
    u0_m0_wo0_mtree_mult1_23_result_add_0_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((46 downto 40 => u0_m0_wo0_mtree_mult1_23_align_19_q(39)) & u0_m0_wo0_mtree_mult1_23_align_19_q));
    u0_m0_wo0_mtree_mult1_23_result_add_0_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((46 downto 46 => u0_m0_wo0_mtree_mult1_23_align_21_q(45)) & u0_m0_wo0_mtree_mult1_23_align_21_q));
    u0_m0_wo0_mtree_mult1_23_result_add_0_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_23_result_add_0_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_23_result_add_0_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_23_result_add_0_1_a) + SIGNED(u0_m0_wo0_mtree_mult1_23_result_add_0_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_23_result_add_0_1_q <= u0_m0_wo0_mtree_mult1_23_result_add_0_1_o(46 downto 0);

    -- u0_m0_wo0_mtree_mult1_23_im3_shift2(BITSHIFT,1224)@11
    u0_m0_wo0_mtree_mult1_23_im3_shift2_qint <= u0_m0_wo0_mtree_mult1_23_bs2_merged_bit_select_b & "0000";
    u0_m0_wo0_mtree_mult1_23_im3_shift2_q <= u0_m0_wo0_mtree_mult1_23_im3_shift2_qint(10 downto 0);

    -- u0_m0_wo0_mtree_mult1_23_im3_sub_3(SUB,1225)@11 + 1
    u0_m0_wo0_mtree_mult1_23_im3_sub_3_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((11 downto 11 => u0_m0_wo0_mtree_mult1_23_im3_shift2_q(10)) & u0_m0_wo0_mtree_mult1_23_im3_shift2_q));
    u0_m0_wo0_mtree_mult1_23_im3_sub_3_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((11 downto 7 => u0_m0_wo0_mtree_mult1_23_bs2_merged_bit_select_b(6)) & u0_m0_wo0_mtree_mult1_23_bs2_merged_bit_select_b));
    u0_m0_wo0_mtree_mult1_23_im3_sub_3_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_23_im3_sub_3_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_23_im3_sub_3_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_23_im3_sub_3_a) - SIGNED(u0_m0_wo0_mtree_mult1_23_im3_sub_3_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_23_im3_sub_3_q <= u0_m0_wo0_mtree_mult1_23_im3_sub_3_o(11 downto 0);

    -- u0_m0_wo0_mtree_mult1_23_im3_shift4(BITSHIFT,1226)@12
    u0_m0_wo0_mtree_mult1_23_im3_shift4_qint <= u0_m0_wo0_mtree_mult1_23_im3_sub_3_q & "0000000";
    u0_m0_wo0_mtree_mult1_23_im3_shift4_q <= u0_m0_wo0_mtree_mult1_23_im3_shift4_qint(18 downto 0);

    -- u0_m0_wo0_mtree_mult1_23_im3_shift0(BITSHIFT,1222)@11
    u0_m0_wo0_mtree_mult1_23_im3_shift0_qint <= u0_m0_wo0_mtree_mult1_23_bs2_merged_bit_select_b & "00000";
    u0_m0_wo0_mtree_mult1_23_im3_shift0_q <= u0_m0_wo0_mtree_mult1_23_im3_shift0_qint(11 downto 0);

    -- u0_m0_wo0_mtree_mult1_23_im3_sub_1(SUB,1223)@11 + 1
    u0_m0_wo0_mtree_mult1_23_im3_sub_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((12 downto 12 => u0_m0_wo0_mtree_mult1_23_im3_shift0_q(11)) & u0_m0_wo0_mtree_mult1_23_im3_shift0_q));
    u0_m0_wo0_mtree_mult1_23_im3_sub_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((12 downto 7 => u0_m0_wo0_mtree_mult1_23_bs2_merged_bit_select_b(6)) & u0_m0_wo0_mtree_mult1_23_bs2_merged_bit_select_b));
    u0_m0_wo0_mtree_mult1_23_im3_sub_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_23_im3_sub_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_23_im3_sub_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_23_im3_sub_1_a) - SIGNED(u0_m0_wo0_mtree_mult1_23_im3_sub_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_23_im3_sub_1_q <= u0_m0_wo0_mtree_mult1_23_im3_sub_1_o(12 downto 0);

    -- u0_m0_wo0_mtree_mult1_23_im3_add_5(ADD,1227)@12 + 1
    u0_m0_wo0_mtree_mult1_23_im3_add_5_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((19 downto 13 => u0_m0_wo0_mtree_mult1_23_im3_sub_1_q(12)) & u0_m0_wo0_mtree_mult1_23_im3_sub_1_q));
    u0_m0_wo0_mtree_mult1_23_im3_add_5_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((19 downto 19 => u0_m0_wo0_mtree_mult1_23_im3_shift4_q(18)) & u0_m0_wo0_mtree_mult1_23_im3_shift4_q));
    u0_m0_wo0_mtree_mult1_23_im3_add_5_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_23_im3_add_5_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_23_im3_add_5_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_23_im3_add_5_a) + SIGNED(u0_m0_wo0_mtree_mult1_23_im3_add_5_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_23_im3_add_5_q <= u0_m0_wo0_mtree_mult1_23_im3_add_5_o(19 downto 0);

    -- u0_m0_wo0_mtree_mult1_23_im3_shift6(BITSHIFT,1228)@13
    u0_m0_wo0_mtree_mult1_23_im3_shift6_qint <= u0_m0_wo0_mtree_mult1_23_im3_add_5_q & "00000";
    u0_m0_wo0_mtree_mult1_23_im3_shift6_q <= u0_m0_wo0_mtree_mult1_23_im3_shift6_qint(24 downto 0);

    -- u0_m0_wo0_mtree_mult1_23_align_17(BITSHIFT,460)@13
    u0_m0_wo0_mtree_mult1_23_align_17_qint <= u0_m0_wo0_mtree_mult1_23_im3_shift6_q & "00000000000000000";
    u0_m0_wo0_mtree_mult1_23_align_17_q <= u0_m0_wo0_mtree_mult1_23_align_17_qint(41 downto 0);

    -- u0_m0_wo0_mtree_mult1_23_im11_shift2(BITSHIFT,1234)@11
    u0_m0_wo0_mtree_mult1_23_im11_shift2_qint <= u0_m0_wo0_mtree_mult1_23_bjB10_q & "0000";
    u0_m0_wo0_mtree_mult1_23_im11_shift2_q <= u0_m0_wo0_mtree_mult1_23_im11_shift2_qint(21 downto 0);

    -- u0_m0_wo0_mtree_mult1_23_im11_sub_3(SUB,1235)@11 + 1
    u0_m0_wo0_mtree_mult1_23_im11_sub_3_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((22 downto 22 => u0_m0_wo0_mtree_mult1_23_im11_shift2_q(21)) & u0_m0_wo0_mtree_mult1_23_im11_shift2_q));
    u0_m0_wo0_mtree_mult1_23_im11_sub_3_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((22 downto 18 => u0_m0_wo0_mtree_mult1_23_bjB10_q(17)) & u0_m0_wo0_mtree_mult1_23_bjB10_q));
    u0_m0_wo0_mtree_mult1_23_im11_sub_3_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_23_im11_sub_3_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_23_im11_sub_3_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_23_im11_sub_3_a) - SIGNED(u0_m0_wo0_mtree_mult1_23_im11_sub_3_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_23_im11_sub_3_q <= u0_m0_wo0_mtree_mult1_23_im11_sub_3_o(22 downto 0);

    -- u0_m0_wo0_mtree_mult1_23_im11_shift4(BITSHIFT,1236)@12
    u0_m0_wo0_mtree_mult1_23_im11_shift4_qint <= u0_m0_wo0_mtree_mult1_23_im11_sub_3_q & "0000000";
    u0_m0_wo0_mtree_mult1_23_im11_shift4_q <= u0_m0_wo0_mtree_mult1_23_im11_shift4_qint(29 downto 0);

    -- u0_m0_wo0_mtree_mult1_23_im11_shift0(BITSHIFT,1232)@11
    u0_m0_wo0_mtree_mult1_23_im11_shift0_qint <= u0_m0_wo0_mtree_mult1_23_bjB10_q & "00000";
    u0_m0_wo0_mtree_mult1_23_im11_shift0_q <= u0_m0_wo0_mtree_mult1_23_im11_shift0_qint(22 downto 0);

    -- u0_m0_wo0_mtree_mult1_23_im11_sub_1(SUB,1233)@11 + 1
    u0_m0_wo0_mtree_mult1_23_im11_sub_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((23 downto 23 => u0_m0_wo0_mtree_mult1_23_im11_shift0_q(22)) & u0_m0_wo0_mtree_mult1_23_im11_shift0_q));
    u0_m0_wo0_mtree_mult1_23_im11_sub_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((23 downto 18 => u0_m0_wo0_mtree_mult1_23_bjB10_q(17)) & u0_m0_wo0_mtree_mult1_23_bjB10_q));
    u0_m0_wo0_mtree_mult1_23_im11_sub_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_23_im11_sub_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_23_im11_sub_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_23_im11_sub_1_a) - SIGNED(u0_m0_wo0_mtree_mult1_23_im11_sub_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_23_im11_sub_1_q <= u0_m0_wo0_mtree_mult1_23_im11_sub_1_o(23 downto 0);

    -- u0_m0_wo0_mtree_mult1_23_im11_add_5(ADD,1237)@12 + 1
    u0_m0_wo0_mtree_mult1_23_im11_add_5_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((30 downto 24 => u0_m0_wo0_mtree_mult1_23_im11_sub_1_q(23)) & u0_m0_wo0_mtree_mult1_23_im11_sub_1_q));
    u0_m0_wo0_mtree_mult1_23_im11_add_5_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((30 downto 30 => u0_m0_wo0_mtree_mult1_23_im11_shift4_q(29)) & u0_m0_wo0_mtree_mult1_23_im11_shift4_q));
    u0_m0_wo0_mtree_mult1_23_im11_add_5_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_23_im11_add_5_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_23_im11_add_5_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_23_im11_add_5_a) + SIGNED(u0_m0_wo0_mtree_mult1_23_im11_add_5_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_23_im11_add_5_q <= u0_m0_wo0_mtree_mult1_23_im11_add_5_o(30 downto 0);

    -- u0_m0_wo0_mtree_mult1_23_im11_shift6(BITSHIFT,1238)@13
    u0_m0_wo0_mtree_mult1_23_im11_shift6_qint <= u0_m0_wo0_mtree_mult1_23_im11_add_5_q & "00000";
    u0_m0_wo0_mtree_mult1_23_im11_shift6_q <= u0_m0_wo0_mtree_mult1_23_im11_shift6_qint(35 downto 0);

    -- u0_m0_wo0_mtree_mult1_23_result_add_0_0(ADD,466)@13 + 1
    u0_m0_wo0_mtree_mult1_23_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((42 downto 36 => u0_m0_wo0_mtree_mult1_23_im11_shift6_q(35)) & u0_m0_wo0_mtree_mult1_23_im11_shift6_q));
    u0_m0_wo0_mtree_mult1_23_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((42 downto 42 => u0_m0_wo0_mtree_mult1_23_align_17_q(41)) & u0_m0_wo0_mtree_mult1_23_align_17_q));
    u0_m0_wo0_mtree_mult1_23_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_23_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_23_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_23_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_23_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_23_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_23_result_add_0_0_o(42 downto 0);

    -- u0_m0_wo0_mtree_mult1_23_result_add_1_0(ADD,468)@14 + 1
    u0_m0_wo0_mtree_mult1_23_result_add_1_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((47 downto 43 => u0_m0_wo0_mtree_mult1_23_result_add_0_0_q(42)) & u0_m0_wo0_mtree_mult1_23_result_add_0_0_q));
    u0_m0_wo0_mtree_mult1_23_result_add_1_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((47 downto 47 => u0_m0_wo0_mtree_mult1_23_result_add_0_1_q(46)) & u0_m0_wo0_mtree_mult1_23_result_add_0_1_q));
    u0_m0_wo0_mtree_mult1_23_result_add_1_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_23_result_add_1_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_23_result_add_1_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_23_result_add_1_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_23_result_add_1_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_23_result_add_1_0_q <= u0_m0_wo0_mtree_mult1_23_result_add_1_0_o(47 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr14(DELAY,33)@10
    u0_m0_wo0_wi0_r0_delayr14 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr13_q, xout => u0_m0_wo0_wi0_r0_delayr14_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_wi0_r0_delayr15(DELAY,34)@10
    u0_m0_wo0_wi0_r0_delayr15 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr14_q, xout => u0_m0_wo0_wi0_r0_delayr15_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_21_bs2_merged_bit_select(BITSELECT,2992)@10
    u0_m0_wo0_mtree_mult1_21_bs2_merged_bit_select_b <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr15_q(23 downto 17));
    u0_m0_wo0_mtree_mult1_21_bs2_merged_bit_select_c <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr15_q(16 downto 0));

    -- d_u0_m0_wo0_mtree_mult1_21_bs2_merged_bit_select_b_11(DELAY,3075)@10 + 1
    d_u0_m0_wo0_mtree_mult1_21_bs2_merged_bit_select_b_11 : dspba_delay
    GENERIC MAP ( width => 7, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_mtree_mult1_21_bs2_merged_bit_select_b, xout => d_u0_m0_wo0_mtree_mult1_21_bs2_merged_bit_select_b_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_21_im0_shift2(BITSHIFT,1241)@11
    u0_m0_wo0_mtree_mult1_21_im0_shift2_qint <= d_u0_m0_wo0_mtree_mult1_21_bs2_merged_bit_select_b_11_q & "0000";
    u0_m0_wo0_mtree_mult1_21_im0_shift2_q <= u0_m0_wo0_mtree_mult1_21_im0_shift2_qint(10 downto 0);

    -- u0_m0_wo0_mtree_mult1_21_im0_shift0(BITSHIFT,1239)@10
    u0_m0_wo0_mtree_mult1_21_im0_shift0_qint <= u0_m0_wo0_mtree_mult1_21_bs2_merged_bit_select_b & "0";
    u0_m0_wo0_mtree_mult1_21_im0_shift0_q <= u0_m0_wo0_mtree_mult1_21_im0_shift0_qint(7 downto 0);

    -- u0_m0_wo0_mtree_mult1_21_im0_add_1(ADD,1240)@10 + 1
    u0_m0_wo0_mtree_mult1_21_im0_add_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((8 downto 7 => u0_m0_wo0_mtree_mult1_21_bs2_merged_bit_select_b(6)) & u0_m0_wo0_mtree_mult1_21_bs2_merged_bit_select_b));
    u0_m0_wo0_mtree_mult1_21_im0_add_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((8 downto 8 => u0_m0_wo0_mtree_mult1_21_im0_shift0_q(7)) & u0_m0_wo0_mtree_mult1_21_im0_shift0_q));
    u0_m0_wo0_mtree_mult1_21_im0_add_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_21_im0_add_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_21_im0_add_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_21_im0_add_1_a) + SIGNED(u0_m0_wo0_mtree_mult1_21_im0_add_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_21_im0_add_1_q <= u0_m0_wo0_mtree_mult1_21_im0_add_1_o(8 downto 0);

    -- u0_m0_wo0_mtree_mult1_21_im0_add_3(ADD,1242)@11 + 1
    u0_m0_wo0_mtree_mult1_21_im0_add_3_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((11 downto 9 => u0_m0_wo0_mtree_mult1_21_im0_add_1_q(8)) & u0_m0_wo0_mtree_mult1_21_im0_add_1_q));
    u0_m0_wo0_mtree_mult1_21_im0_add_3_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((11 downto 11 => u0_m0_wo0_mtree_mult1_21_im0_shift2_q(10)) & u0_m0_wo0_mtree_mult1_21_im0_shift2_q));
    u0_m0_wo0_mtree_mult1_21_im0_add_3_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_21_im0_add_3_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_21_im0_add_3_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_21_im0_add_3_a) + SIGNED(u0_m0_wo0_mtree_mult1_21_im0_add_3_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_21_im0_add_3_q <= u0_m0_wo0_mtree_mult1_21_im0_add_3_o(11 downto 0);

    -- u0_m0_wo0_mtree_mult1_21_align_21(BITSHIFT,490)@12
    u0_m0_wo0_mtree_mult1_21_align_21_qint <= STD_LOGIC_VECTOR((12 downto 12 => u0_m0_wo0_mtree_mult1_21_im0_add_3_q(11)) & u0_m0_wo0_mtree_mult1_21_im0_add_3_q) & "0000000000000000000000000000000000";
    u0_m0_wo0_mtree_mult1_21_align_21_q <= u0_m0_wo0_mtree_mult1_21_align_21_qint(46 downto 0);

    -- u0_m0_wo0_mtree_mult1_21_bjB10(BITJOIN,479)@10
    u0_m0_wo0_mtree_mult1_21_bjB10_q <= GND_q & u0_m0_wo0_mtree_mult1_21_bs2_merged_bit_select_c;

    -- d_u0_m0_wo0_mtree_mult1_21_bjB10_q_11(DELAY,3047)@10 + 1
    d_u0_m0_wo0_mtree_mult1_21_bjB10_q_11 : dspba_delay
    GENERIC MAP ( width => 18, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_mtree_mult1_21_bjB10_q, xout => d_u0_m0_wo0_mtree_mult1_21_bjB10_q_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_21_im7_shift2(BITSHIFT,1257)@11
    u0_m0_wo0_mtree_mult1_21_im7_shift2_qint <= d_u0_m0_wo0_mtree_mult1_21_bjB10_q_11_q & "0000";
    u0_m0_wo0_mtree_mult1_21_im7_shift2_q <= u0_m0_wo0_mtree_mult1_21_im7_shift2_qint(21 downto 0);

    -- u0_m0_wo0_mtree_mult1_21_im7_shift0(BITSHIFT,1255)@10
    u0_m0_wo0_mtree_mult1_21_im7_shift0_qint <= u0_m0_wo0_mtree_mult1_21_bjB10_q & "0";
    u0_m0_wo0_mtree_mult1_21_im7_shift0_q <= u0_m0_wo0_mtree_mult1_21_im7_shift0_qint(18 downto 0);

    -- u0_m0_wo0_mtree_mult1_21_im7_add_1(ADD,1256)@10 + 1
    u0_m0_wo0_mtree_mult1_21_im7_add_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((19 downto 18 => u0_m0_wo0_mtree_mult1_21_bjB10_q(17)) & u0_m0_wo0_mtree_mult1_21_bjB10_q));
    u0_m0_wo0_mtree_mult1_21_im7_add_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((19 downto 19 => u0_m0_wo0_mtree_mult1_21_im7_shift0_q(18)) & u0_m0_wo0_mtree_mult1_21_im7_shift0_q));
    u0_m0_wo0_mtree_mult1_21_im7_add_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_21_im7_add_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_21_im7_add_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_21_im7_add_1_a) + SIGNED(u0_m0_wo0_mtree_mult1_21_im7_add_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_21_im7_add_1_q <= u0_m0_wo0_mtree_mult1_21_im7_add_1_o(19 downto 0);

    -- u0_m0_wo0_mtree_mult1_21_im7_add_3(ADD,1258)@11 + 1
    u0_m0_wo0_mtree_mult1_21_im7_add_3_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((22 downto 20 => u0_m0_wo0_mtree_mult1_21_im7_add_1_q(19)) & u0_m0_wo0_mtree_mult1_21_im7_add_1_q));
    u0_m0_wo0_mtree_mult1_21_im7_add_3_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((22 downto 22 => u0_m0_wo0_mtree_mult1_21_im7_shift2_q(21)) & u0_m0_wo0_mtree_mult1_21_im7_shift2_q));
    u0_m0_wo0_mtree_mult1_21_im7_add_3_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_21_im7_add_3_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_21_im7_add_3_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_21_im7_add_3_a) + SIGNED(u0_m0_wo0_mtree_mult1_21_im7_add_3_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_21_im7_add_3_q <= u0_m0_wo0_mtree_mult1_21_im7_add_3_o(22 downto 0);

    -- u0_m0_wo0_mtree_mult1_21_align_19(BITSHIFT,488)@12
    u0_m0_wo0_mtree_mult1_21_align_19_qint <= STD_LOGIC_VECTOR((23 downto 23 => u0_m0_wo0_mtree_mult1_21_im7_add_3_q(22)) & u0_m0_wo0_mtree_mult1_21_im7_add_3_q) & "00000000000000000";
    u0_m0_wo0_mtree_mult1_21_align_19_q <= u0_m0_wo0_mtree_mult1_21_align_19_qint(40 downto 0);

    -- u0_m0_wo0_mtree_mult1_21_result_add_0_1(ADD,493)@12 + 1
    u0_m0_wo0_mtree_mult1_21_result_add_0_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((47 downto 41 => u0_m0_wo0_mtree_mult1_21_align_19_q(40)) & u0_m0_wo0_mtree_mult1_21_align_19_q));
    u0_m0_wo0_mtree_mult1_21_result_add_0_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((47 downto 47 => u0_m0_wo0_mtree_mult1_21_align_21_q(46)) & u0_m0_wo0_mtree_mult1_21_align_21_q));
    u0_m0_wo0_mtree_mult1_21_result_add_0_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_21_result_add_0_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_21_result_add_0_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_21_result_add_0_1_a) + SIGNED(u0_m0_wo0_mtree_mult1_21_result_add_0_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_21_result_add_0_1_q <= u0_m0_wo0_mtree_mult1_21_result_add_0_1_o(47 downto 0);

    -- u0_m0_wo0_mtree_mult1_21_bjA5_q_const(CONSTANT,3020)@0
    u0_m0_wo0_mtree_mult1_21_bjA5_q_const_q <= "000110100111100011";

    -- u0_m0_wo0_mtree_mult1_21_im3(MULT,472)@10 + 2
    u0_m0_wo0_mtree_mult1_21_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_21_bjA5_q_const_q);
    u0_m0_wo0_mtree_mult1_21_im3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_21_bs2_merged_bit_select_b);
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

    -- u0_m0_wo0_mtree_mult1_21_align_17(BITSHIFT,486)@12
    u0_m0_wo0_mtree_mult1_21_align_17_qint <= u0_m0_wo0_mtree_mult1_21_im3_q & "00000000000000000";
    u0_m0_wo0_mtree_mult1_21_align_17_q <= u0_m0_wo0_mtree_mult1_21_align_17_qint(41 downto 0);

    -- u0_m0_wo0_mtree_mult1_21_im11(MULT,480)@10 + 2
    u0_m0_wo0_mtree_mult1_21_im11_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_21_bjA5_q_const_q);
    u0_m0_wo0_mtree_mult1_21_im11_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_21_bjB10_q);
    u0_m0_wo0_mtree_mult1_21_im11_reset <= areset;
    u0_m0_wo0_mtree_mult1_21_im11_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 18,
        lpm_widthp => 36,
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

    -- u0_m0_wo0_mtree_mult1_21_result_add_0_0(ADD,492)@12 + 1
    u0_m0_wo0_mtree_mult1_21_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((42 downto 36 => u0_m0_wo0_mtree_mult1_21_im11_q(35)) & u0_m0_wo0_mtree_mult1_21_im11_q));
    u0_m0_wo0_mtree_mult1_21_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((42 downto 42 => u0_m0_wo0_mtree_mult1_21_align_17_q(41)) & u0_m0_wo0_mtree_mult1_21_align_17_q));
    u0_m0_wo0_mtree_mult1_21_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_21_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_21_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_21_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_21_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_21_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_21_result_add_0_0_o(42 downto 0);

    -- u0_m0_wo0_mtree_mult1_21_result_add_1_0(ADD,494)@13 + 1
    u0_m0_wo0_mtree_mult1_21_result_add_1_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 43 => u0_m0_wo0_mtree_mult1_21_result_add_0_0_q(42)) & u0_m0_wo0_mtree_mult1_21_result_add_0_0_q));
    u0_m0_wo0_mtree_mult1_21_result_add_1_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 48 => u0_m0_wo0_mtree_mult1_21_result_add_0_1_q(47)) & u0_m0_wo0_mtree_mult1_21_result_add_0_1_q));
    u0_m0_wo0_mtree_mult1_21_result_add_1_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_21_result_add_1_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_21_result_add_1_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_21_result_add_1_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_21_result_add_1_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_21_result_add_1_0_q <= u0_m0_wo0_mtree_mult1_21_result_add_1_0_o(48 downto 0);

    -- u0_m0_wo0_mtree_mult1_20_im0_shift0(BITSHIFT,1271)@11
    u0_m0_wo0_mtree_mult1_20_im0_shift0_qint <= d_u0_m0_wo0_mtree_mult1_20_bs2_merged_bit_select_b_11_q & "00";
    u0_m0_wo0_mtree_mult1_20_im0_shift0_q <= u0_m0_wo0_mtree_mult1_20_im0_shift0_qint(8 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr16(DELAY,35)@10
    u0_m0_wo0_wi0_r0_delayr16 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr15_q, xout => u0_m0_wo0_wi0_r0_delayr16_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_20_bs2_merged_bit_select(BITSELECT,2993)@10
    u0_m0_wo0_mtree_mult1_20_bs2_merged_bit_select_b <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr16_q(23 downto 17));
    u0_m0_wo0_mtree_mult1_20_bs2_merged_bit_select_c <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr16_q(16 downto 0));

    -- d_u0_m0_wo0_mtree_mult1_20_bs2_merged_bit_select_b_11(DELAY,3076)@10 + 1
    d_u0_m0_wo0_mtree_mult1_20_bs2_merged_bit_select_b_11 : dspba_delay
    GENERIC MAP ( width => 7, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_mtree_mult1_20_bs2_merged_bit_select_b, xout => d_u0_m0_wo0_mtree_mult1_20_bs2_merged_bit_select_b_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_20_im0_add_1(ADD,1272)@11 + 1
    u0_m0_wo0_mtree_mult1_20_im0_add_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((9 downto 7 => d_u0_m0_wo0_mtree_mult1_20_bs2_merged_bit_select_b_11_q(6)) & d_u0_m0_wo0_mtree_mult1_20_bs2_merged_bit_select_b_11_q));
    u0_m0_wo0_mtree_mult1_20_im0_add_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((9 downto 9 => u0_m0_wo0_mtree_mult1_20_im0_shift0_q(8)) & u0_m0_wo0_mtree_mult1_20_im0_shift0_q));
    u0_m0_wo0_mtree_mult1_20_im0_add_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_20_im0_add_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_20_im0_add_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_20_im0_add_1_a) + SIGNED(u0_m0_wo0_mtree_mult1_20_im0_add_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_20_im0_add_1_q <= u0_m0_wo0_mtree_mult1_20_im0_add_1_o(9 downto 0);

    -- u0_m0_wo0_mtree_mult1_20_im0_shift2(BITSHIFT,1273)@12
    u0_m0_wo0_mtree_mult1_20_im0_shift2_qint <= u0_m0_wo0_mtree_mult1_20_im0_add_1_q & "000";
    u0_m0_wo0_mtree_mult1_20_im0_shift2_q <= u0_m0_wo0_mtree_mult1_20_im0_shift2_qint(12 downto 0);

    -- u0_m0_wo0_mtree_mult1_20_align_21(BITSHIFT,516)@12
    u0_m0_wo0_mtree_mult1_20_align_21_qint <= STD_LOGIC_VECTOR((13 downto 13 => u0_m0_wo0_mtree_mult1_20_im0_shift2_q(12)) & u0_m0_wo0_mtree_mult1_20_im0_shift2_q) & "0000000000000000000000000000000000";
    u0_m0_wo0_mtree_mult1_20_align_21_q <= u0_m0_wo0_mtree_mult1_20_align_21_qint(47 downto 0);

    -- u0_m0_wo0_mtree_mult1_20_im7_shift0(BITSHIFT,1287)@11
    u0_m0_wo0_mtree_mult1_20_im7_shift0_qint <= d_u0_m0_wo0_mtree_mult1_20_bjB10_q_11_q & "00";
    u0_m0_wo0_mtree_mult1_20_im7_shift0_q <= u0_m0_wo0_mtree_mult1_20_im7_shift0_qint(19 downto 0);

    -- u0_m0_wo0_mtree_mult1_20_bjB10(BITJOIN,505)@10
    u0_m0_wo0_mtree_mult1_20_bjB10_q <= GND_q & u0_m0_wo0_mtree_mult1_20_bs2_merged_bit_select_c;

    -- d_u0_m0_wo0_mtree_mult1_20_bjB10_q_11(DELAY,3048)@10 + 1
    d_u0_m0_wo0_mtree_mult1_20_bjB10_q_11 : dspba_delay
    GENERIC MAP ( width => 18, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_mtree_mult1_20_bjB10_q, xout => d_u0_m0_wo0_mtree_mult1_20_bjB10_q_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_20_im7_add_1(ADD,1288)@11 + 1
    u0_m0_wo0_mtree_mult1_20_im7_add_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((20 downto 18 => d_u0_m0_wo0_mtree_mult1_20_bjB10_q_11_q(17)) & d_u0_m0_wo0_mtree_mult1_20_bjB10_q_11_q));
    u0_m0_wo0_mtree_mult1_20_im7_add_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((20 downto 20 => u0_m0_wo0_mtree_mult1_20_im7_shift0_q(19)) & u0_m0_wo0_mtree_mult1_20_im7_shift0_q));
    u0_m0_wo0_mtree_mult1_20_im7_add_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_20_im7_add_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_20_im7_add_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_20_im7_add_1_a) + SIGNED(u0_m0_wo0_mtree_mult1_20_im7_add_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_20_im7_add_1_q <= u0_m0_wo0_mtree_mult1_20_im7_add_1_o(20 downto 0);

    -- u0_m0_wo0_mtree_mult1_20_im7_shift2(BITSHIFT,1289)@12
    u0_m0_wo0_mtree_mult1_20_im7_shift2_qint <= u0_m0_wo0_mtree_mult1_20_im7_add_1_q & "000";
    u0_m0_wo0_mtree_mult1_20_im7_shift2_q <= u0_m0_wo0_mtree_mult1_20_im7_shift2_qint(23 downto 0);

    -- u0_m0_wo0_mtree_mult1_20_align_19(BITSHIFT,514)@12
    u0_m0_wo0_mtree_mult1_20_align_19_qint <= STD_LOGIC_VECTOR((24 downto 24 => u0_m0_wo0_mtree_mult1_20_im7_shift2_q(23)) & u0_m0_wo0_mtree_mult1_20_im7_shift2_q) & "00000000000000000";
    u0_m0_wo0_mtree_mult1_20_align_19_q <= u0_m0_wo0_mtree_mult1_20_align_19_qint(41 downto 0);

    -- u0_m0_wo0_mtree_mult1_20_result_add_0_1(ADD,519)@12 + 1
    u0_m0_wo0_mtree_mult1_20_result_add_0_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 42 => u0_m0_wo0_mtree_mult1_20_align_19_q(41)) & u0_m0_wo0_mtree_mult1_20_align_19_q));
    u0_m0_wo0_mtree_mult1_20_result_add_0_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 48 => u0_m0_wo0_mtree_mult1_20_align_21_q(47)) & u0_m0_wo0_mtree_mult1_20_align_21_q));
    u0_m0_wo0_mtree_mult1_20_result_add_0_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_20_result_add_0_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_20_result_add_0_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_20_result_add_0_1_a) + SIGNED(u0_m0_wo0_mtree_mult1_20_result_add_0_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_20_result_add_0_1_q <= u0_m0_wo0_mtree_mult1_20_result_add_0_1_o(48 downto 0);

    -- u0_m0_wo0_mtree_mult1_20_bjA5_q_const(CONSTANT,3021)@0
    u0_m0_wo0_mtree_mult1_20_bjA5_q_const_q <= "010111110011010110";

    -- u0_m0_wo0_mtree_mult1_20_im3(MULT,498)@10 + 2
    u0_m0_wo0_mtree_mult1_20_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_20_bjA5_q_const_q);
    u0_m0_wo0_mtree_mult1_20_im3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_20_bs2_merged_bit_select_b);
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

    -- u0_m0_wo0_mtree_mult1_20_align_17(BITSHIFT,512)@12
    u0_m0_wo0_mtree_mult1_20_align_17_qint <= u0_m0_wo0_mtree_mult1_20_im3_q & "00000000000000000";
    u0_m0_wo0_mtree_mult1_20_align_17_q <= u0_m0_wo0_mtree_mult1_20_align_17_qint(41 downto 0);

    -- u0_m0_wo0_mtree_mult1_20_im11(MULT,506)@10 + 2
    u0_m0_wo0_mtree_mult1_20_im11_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_20_bjA5_q_const_q);
    u0_m0_wo0_mtree_mult1_20_im11_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_20_bjB10_q);
    u0_m0_wo0_mtree_mult1_20_im11_reset <= areset;
    u0_m0_wo0_mtree_mult1_20_im11_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 18,
        lpm_widthp => 36,
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

    -- u0_m0_wo0_mtree_mult1_20_result_add_0_0(ADD,518)@12 + 1
    u0_m0_wo0_mtree_mult1_20_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((42 downto 36 => u0_m0_wo0_mtree_mult1_20_im11_q(35)) & u0_m0_wo0_mtree_mult1_20_im11_q));
    u0_m0_wo0_mtree_mult1_20_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((42 downto 42 => u0_m0_wo0_mtree_mult1_20_align_17_q(41)) & u0_m0_wo0_mtree_mult1_20_align_17_q));
    u0_m0_wo0_mtree_mult1_20_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_20_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_20_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_20_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_20_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_20_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_20_result_add_0_0_o(42 downto 0);

    -- u0_m0_wo0_mtree_mult1_20_result_add_1_0(ADD,520)@13 + 1
    u0_m0_wo0_mtree_mult1_20_result_add_1_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((49 downto 43 => u0_m0_wo0_mtree_mult1_20_result_add_0_0_q(42)) & u0_m0_wo0_mtree_mult1_20_result_add_0_0_q));
    u0_m0_wo0_mtree_mult1_20_result_add_1_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((49 downto 49 => u0_m0_wo0_mtree_mult1_20_result_add_0_1_q(48)) & u0_m0_wo0_mtree_mult1_20_result_add_0_1_q));
    u0_m0_wo0_mtree_mult1_20_result_add_1_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_20_result_add_1_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_20_result_add_1_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_20_result_add_1_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_20_result_add_1_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_20_result_add_1_0_q <= u0_m0_wo0_mtree_mult1_20_result_add_1_0_o(49 downto 0);

    -- u0_m0_wo0_mtree_add0_10(ADD,143)@14 + 1
    u0_m0_wo0_mtree_add0_10_a <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_20_result_add_1_0_q(48 downto 0));
    u0_m0_wo0_mtree_add0_10_b <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_21_result_add_1_0_q);
    u0_m0_wo0_mtree_add0_10_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_10_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_10_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_10_a) + SIGNED(u0_m0_wo0_mtree_add0_10_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_10_q <= u0_m0_wo0_mtree_add0_10_o(48 downto 0);

    -- u0_m0_wo0_mtree_add1_5(ADD,156)@15 + 1
    u0_m0_wo0_mtree_add1_5_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((49 downto 49 => u0_m0_wo0_mtree_add0_10_q(48)) & u0_m0_wo0_mtree_add0_10_q));
    u0_m0_wo0_mtree_add1_5_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((49 downto 48 => u0_m0_wo0_mtree_mult1_23_result_add_1_0_q(47)) & u0_m0_wo0_mtree_mult1_23_result_add_1_0_q));
    u0_m0_wo0_mtree_add1_5_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_5_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_5_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_5_a) + SIGNED(u0_m0_wo0_mtree_add1_5_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_5_q <= u0_m0_wo0_mtree_add1_5_o(49 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr17(DELAY,36)@10
    u0_m0_wo0_wi0_r0_delayr17 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr16_q, xout => u0_m0_wo0_wi0_r0_delayr17_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_19_bs2_merged_bit_select(BITSELECT,2994)@10
    u0_m0_wo0_mtree_mult1_19_bs2_merged_bit_select_b <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr17_q(23 downto 17));
    u0_m0_wo0_mtree_mult1_19_bs2_merged_bit_select_c <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr17_q(16 downto 0));

    -- d_u0_m0_wo0_mtree_mult1_19_bs2_merged_bit_select_b_11(DELAY,3077)@10 + 1
    d_u0_m0_wo0_mtree_mult1_19_bs2_merged_bit_select_b_11 : dspba_delay
    GENERIC MAP ( width => 7, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_mtree_mult1_19_bs2_merged_bit_select_b, xout => d_u0_m0_wo0_mtree_mult1_19_bs2_merged_bit_select_b_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_19_im0_shift2(BITSHIFT,1305)@11
    u0_m0_wo0_mtree_mult1_19_im0_shift2_qint <= d_u0_m0_wo0_mtree_mult1_19_bs2_merged_bit_select_b_11_q & "000000";
    u0_m0_wo0_mtree_mult1_19_im0_shift2_q <= u0_m0_wo0_mtree_mult1_19_im0_shift2_qint(12 downto 0);

    -- u0_m0_wo0_mtree_mult1_19_im0_shift0(BITSHIFT,1303)@10
    u0_m0_wo0_mtree_mult1_19_im0_shift0_qint <= u0_m0_wo0_mtree_mult1_19_bs2_merged_bit_select_b & "000";
    u0_m0_wo0_mtree_mult1_19_im0_shift0_q <= u0_m0_wo0_mtree_mult1_19_im0_shift0_qint(9 downto 0);

    -- u0_m0_wo0_mtree_mult1_19_im0_sub_1(SUB,1304)@10 + 1
    u0_m0_wo0_mtree_mult1_19_im0_sub_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((10 downto 7 => u0_m0_wo0_mtree_mult1_19_bs2_merged_bit_select_b(6)) & u0_m0_wo0_mtree_mult1_19_bs2_merged_bit_select_b));
    u0_m0_wo0_mtree_mult1_19_im0_sub_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((10 downto 10 => u0_m0_wo0_mtree_mult1_19_im0_shift0_q(9)) & u0_m0_wo0_mtree_mult1_19_im0_shift0_q));
    u0_m0_wo0_mtree_mult1_19_im0_sub_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_19_im0_sub_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_19_im0_sub_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_19_im0_sub_1_a) - SIGNED(u0_m0_wo0_mtree_mult1_19_im0_sub_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_19_im0_sub_1_q <= u0_m0_wo0_mtree_mult1_19_im0_sub_1_o(10 downto 0);

    -- u0_m0_wo0_mtree_mult1_19_im0_add_3(ADD,1306)@11 + 1
    u0_m0_wo0_mtree_mult1_19_im0_add_3_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((13 downto 11 => u0_m0_wo0_mtree_mult1_19_im0_sub_1_q(10)) & u0_m0_wo0_mtree_mult1_19_im0_sub_1_q));
    u0_m0_wo0_mtree_mult1_19_im0_add_3_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((13 downto 13 => u0_m0_wo0_mtree_mult1_19_im0_shift2_q(12)) & u0_m0_wo0_mtree_mult1_19_im0_shift2_q));
    u0_m0_wo0_mtree_mult1_19_im0_add_3_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_19_im0_add_3_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_19_im0_add_3_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_19_im0_add_3_a) + SIGNED(u0_m0_wo0_mtree_mult1_19_im0_add_3_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_19_im0_add_3_q <= u0_m0_wo0_mtree_mult1_19_im0_add_3_o(13 downto 0);

    -- u0_m0_wo0_mtree_mult1_19_align_21(BITSHIFT,542)@12
    u0_m0_wo0_mtree_mult1_19_align_21_qint <= u0_m0_wo0_mtree_mult1_19_im0_add_3_q & "0000000000000000000000000000000000";
    u0_m0_wo0_mtree_mult1_19_align_21_q <= u0_m0_wo0_mtree_mult1_19_align_21_qint(47 downto 0);

    -- u0_m0_wo0_mtree_mult1_19_bjB10(BITJOIN,531)@10
    u0_m0_wo0_mtree_mult1_19_bjB10_q <= GND_q & u0_m0_wo0_mtree_mult1_19_bs2_merged_bit_select_c;

    -- d_u0_m0_wo0_mtree_mult1_19_bjB10_q_11(DELAY,3049)@10 + 1
    d_u0_m0_wo0_mtree_mult1_19_bjB10_q_11 : dspba_delay
    GENERIC MAP ( width => 18, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_mtree_mult1_19_bjB10_q, xout => d_u0_m0_wo0_mtree_mult1_19_bjB10_q_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_19_im7_shift2(BITSHIFT,1321)@11
    u0_m0_wo0_mtree_mult1_19_im7_shift2_qint <= d_u0_m0_wo0_mtree_mult1_19_bjB10_q_11_q & "000000";
    u0_m0_wo0_mtree_mult1_19_im7_shift2_q <= u0_m0_wo0_mtree_mult1_19_im7_shift2_qint(23 downto 0);

    -- u0_m0_wo0_mtree_mult1_19_im7_shift0(BITSHIFT,1319)@10
    u0_m0_wo0_mtree_mult1_19_im7_shift0_qint <= u0_m0_wo0_mtree_mult1_19_bjB10_q & "000";
    u0_m0_wo0_mtree_mult1_19_im7_shift0_q <= u0_m0_wo0_mtree_mult1_19_im7_shift0_qint(20 downto 0);

    -- u0_m0_wo0_mtree_mult1_19_im7_sub_1(SUB,1320)@10 + 1
    u0_m0_wo0_mtree_mult1_19_im7_sub_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 18 => u0_m0_wo0_mtree_mult1_19_bjB10_q(17)) & u0_m0_wo0_mtree_mult1_19_bjB10_q));
    u0_m0_wo0_mtree_mult1_19_im7_sub_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 21 => u0_m0_wo0_mtree_mult1_19_im7_shift0_q(20)) & u0_m0_wo0_mtree_mult1_19_im7_shift0_q));
    u0_m0_wo0_mtree_mult1_19_im7_sub_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_19_im7_sub_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_19_im7_sub_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_19_im7_sub_1_a) - SIGNED(u0_m0_wo0_mtree_mult1_19_im7_sub_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_19_im7_sub_1_q <= u0_m0_wo0_mtree_mult1_19_im7_sub_1_o(21 downto 0);

    -- u0_m0_wo0_mtree_mult1_19_im7_add_3(ADD,1322)@11 + 1
    u0_m0_wo0_mtree_mult1_19_im7_add_3_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((24 downto 22 => u0_m0_wo0_mtree_mult1_19_im7_sub_1_q(21)) & u0_m0_wo0_mtree_mult1_19_im7_sub_1_q));
    u0_m0_wo0_mtree_mult1_19_im7_add_3_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((24 downto 24 => u0_m0_wo0_mtree_mult1_19_im7_shift2_q(23)) & u0_m0_wo0_mtree_mult1_19_im7_shift2_q));
    u0_m0_wo0_mtree_mult1_19_im7_add_3_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_19_im7_add_3_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_19_im7_add_3_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_19_im7_add_3_a) + SIGNED(u0_m0_wo0_mtree_mult1_19_im7_add_3_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_19_im7_add_3_q <= u0_m0_wo0_mtree_mult1_19_im7_add_3_o(24 downto 0);

    -- u0_m0_wo0_mtree_mult1_19_align_19(BITSHIFT,540)@12
    u0_m0_wo0_mtree_mult1_19_align_19_qint <= u0_m0_wo0_mtree_mult1_19_im7_add_3_q & "00000000000000000";
    u0_m0_wo0_mtree_mult1_19_align_19_q <= u0_m0_wo0_mtree_mult1_19_align_19_qint(41 downto 0);

    -- u0_m0_wo0_mtree_mult1_19_result_add_0_1(ADD,545)@12 + 1
    u0_m0_wo0_mtree_mult1_19_result_add_0_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 42 => u0_m0_wo0_mtree_mult1_19_align_19_q(41)) & u0_m0_wo0_mtree_mult1_19_align_19_q));
    u0_m0_wo0_mtree_mult1_19_result_add_0_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 48 => u0_m0_wo0_mtree_mult1_19_align_21_q(47)) & u0_m0_wo0_mtree_mult1_19_align_21_q));
    u0_m0_wo0_mtree_mult1_19_result_add_0_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_19_result_add_0_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_19_result_add_0_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_19_result_add_0_1_a) + SIGNED(u0_m0_wo0_mtree_mult1_19_result_add_0_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_19_result_add_0_1_q <= u0_m0_wo0_mtree_mult1_19_result_add_0_1_o(48 downto 0);

    -- u0_m0_wo0_mtree_mult1_19_bjA5_q_const(CONSTANT,3022)@0
    u0_m0_wo0_mtree_mult1_19_bjA5_q_const_q <= "010011110110001011";

    -- u0_m0_wo0_mtree_mult1_19_im3(MULT,524)@10 + 2
    u0_m0_wo0_mtree_mult1_19_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_19_bjA5_q_const_q);
    u0_m0_wo0_mtree_mult1_19_im3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_19_bs2_merged_bit_select_b);
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

    -- u0_m0_wo0_mtree_mult1_19_align_17(BITSHIFT,538)@12
    u0_m0_wo0_mtree_mult1_19_align_17_qint <= u0_m0_wo0_mtree_mult1_19_im3_q & "00000000000000000";
    u0_m0_wo0_mtree_mult1_19_align_17_q <= u0_m0_wo0_mtree_mult1_19_align_17_qint(41 downto 0);

    -- u0_m0_wo0_mtree_mult1_19_im11(MULT,532)@10 + 2
    u0_m0_wo0_mtree_mult1_19_im11_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_19_bjA5_q_const_q);
    u0_m0_wo0_mtree_mult1_19_im11_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_19_bjB10_q);
    u0_m0_wo0_mtree_mult1_19_im11_reset <= areset;
    u0_m0_wo0_mtree_mult1_19_im11_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 18,
        lpm_widthp => 36,
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

    -- u0_m0_wo0_mtree_mult1_19_result_add_0_0(ADD,544)@12 + 1
    u0_m0_wo0_mtree_mult1_19_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((42 downto 36 => u0_m0_wo0_mtree_mult1_19_im11_q(35)) & u0_m0_wo0_mtree_mult1_19_im11_q));
    u0_m0_wo0_mtree_mult1_19_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((42 downto 42 => u0_m0_wo0_mtree_mult1_19_align_17_q(41)) & u0_m0_wo0_mtree_mult1_19_align_17_q));
    u0_m0_wo0_mtree_mult1_19_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_19_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_19_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_19_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_19_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_19_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_19_result_add_0_0_o(42 downto 0);

    -- u0_m0_wo0_mtree_mult1_19_result_add_1_0(ADD,546)@13 + 1
    u0_m0_wo0_mtree_mult1_19_result_add_1_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((49 downto 43 => u0_m0_wo0_mtree_mult1_19_result_add_0_0_q(42)) & u0_m0_wo0_mtree_mult1_19_result_add_0_0_q));
    u0_m0_wo0_mtree_mult1_19_result_add_1_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((49 downto 49 => u0_m0_wo0_mtree_mult1_19_result_add_0_1_q(48)) & u0_m0_wo0_mtree_mult1_19_result_add_0_1_q));
    u0_m0_wo0_mtree_mult1_19_result_add_1_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_19_result_add_1_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_19_result_add_1_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_19_result_add_1_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_19_result_add_1_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_19_result_add_1_0_q <= u0_m0_wo0_mtree_mult1_19_result_add_1_0_o(49 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr18(DELAY,37)@10
    u0_m0_wo0_wi0_r0_delayr18 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr17_q, xout => u0_m0_wo0_wi0_r0_delayr18_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_r0_delayr18_q_11(DELAY,3031)@10 + 1
    d_u0_m0_wo0_wi0_r0_delayr18_q_11 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr18_q, xout => d_u0_m0_wo0_wi0_r0_delayr18_q_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_18_bs2_merged_bit_select(BITSELECT,2995)@11
    u0_m0_wo0_mtree_mult1_18_bs2_merged_bit_select_b <= STD_LOGIC_VECTOR(d_u0_m0_wo0_wi0_r0_delayr18_q_11_q(23 downto 17));
    u0_m0_wo0_mtree_mult1_18_bs2_merged_bit_select_c <= STD_LOGIC_VECTOR(d_u0_m0_wo0_wi0_r0_delayr18_q_11_q(16 downto 0));

    -- u0_m0_wo0_mtree_mult1_18_im0_shift0(BITSHIFT,1335)@11
    u0_m0_wo0_mtree_mult1_18_im0_shift0_qint <= u0_m0_wo0_mtree_mult1_18_bs2_merged_bit_select_b & "000000";
    u0_m0_wo0_mtree_mult1_18_im0_shift0_q <= u0_m0_wo0_mtree_mult1_18_im0_shift0_qint(12 downto 0);

    -- u0_m0_wo0_mtree_mult1_18_im0_sub_1(SUB,1336)@11 + 1
    u0_m0_wo0_mtree_mult1_18_im0_sub_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((13 downto 13 => u0_m0_wo0_mtree_mult1_18_im0_shift0_q(12)) & u0_m0_wo0_mtree_mult1_18_im0_shift0_q));
    u0_m0_wo0_mtree_mult1_18_im0_sub_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((13 downto 7 => u0_m0_wo0_mtree_mult1_18_bs2_merged_bit_select_b(6)) & u0_m0_wo0_mtree_mult1_18_bs2_merged_bit_select_b));
    u0_m0_wo0_mtree_mult1_18_im0_sub_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_18_im0_sub_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_18_im0_sub_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_18_im0_sub_1_a) - SIGNED(u0_m0_wo0_mtree_mult1_18_im0_sub_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_18_im0_sub_1_q <= u0_m0_wo0_mtree_mult1_18_im0_sub_1_o(13 downto 0);

    -- u0_m0_wo0_mtree_mult1_18_align_21(BITSHIFT,568)@12
    u0_m0_wo0_mtree_mult1_18_align_21_qint <= u0_m0_wo0_mtree_mult1_18_im0_sub_1_q & "0000000000000000000000000000000000";
    u0_m0_wo0_mtree_mult1_18_align_21_q <= u0_m0_wo0_mtree_mult1_18_align_21_qint(47 downto 0);

    -- u0_m0_wo0_mtree_mult1_18_bjB10(BITJOIN,557)@11
    u0_m0_wo0_mtree_mult1_18_bjB10_q <= GND_q & u0_m0_wo0_mtree_mult1_18_bs2_merged_bit_select_c;

    -- u0_m0_wo0_mtree_mult1_18_im7_shift0(BITSHIFT,1339)@11
    u0_m0_wo0_mtree_mult1_18_im7_shift0_qint <= u0_m0_wo0_mtree_mult1_18_bjB10_q & "000000";
    u0_m0_wo0_mtree_mult1_18_im7_shift0_q <= u0_m0_wo0_mtree_mult1_18_im7_shift0_qint(23 downto 0);

    -- u0_m0_wo0_mtree_mult1_18_im7_sub_1(SUB,1340)@11 + 1
    u0_m0_wo0_mtree_mult1_18_im7_sub_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((24 downto 24 => u0_m0_wo0_mtree_mult1_18_im7_shift0_q(23)) & u0_m0_wo0_mtree_mult1_18_im7_shift0_q));
    u0_m0_wo0_mtree_mult1_18_im7_sub_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((24 downto 18 => u0_m0_wo0_mtree_mult1_18_bjB10_q(17)) & u0_m0_wo0_mtree_mult1_18_bjB10_q));
    u0_m0_wo0_mtree_mult1_18_im7_sub_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_18_im7_sub_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_18_im7_sub_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_18_im7_sub_1_a) - SIGNED(u0_m0_wo0_mtree_mult1_18_im7_sub_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_18_im7_sub_1_q <= u0_m0_wo0_mtree_mult1_18_im7_sub_1_o(24 downto 0);

    -- u0_m0_wo0_mtree_mult1_18_align_19(BITSHIFT,566)@12
    u0_m0_wo0_mtree_mult1_18_align_19_qint <= u0_m0_wo0_mtree_mult1_18_im7_sub_1_q & "00000000000000000";
    u0_m0_wo0_mtree_mult1_18_align_19_q <= u0_m0_wo0_mtree_mult1_18_align_19_qint(41 downto 0);

    -- u0_m0_wo0_mtree_mult1_18_result_add_0_1(ADD,571)@12 + 1
    u0_m0_wo0_mtree_mult1_18_result_add_0_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 42 => u0_m0_wo0_mtree_mult1_18_align_19_q(41)) & u0_m0_wo0_mtree_mult1_18_align_19_q));
    u0_m0_wo0_mtree_mult1_18_result_add_0_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 48 => u0_m0_wo0_mtree_mult1_18_align_21_q(47)) & u0_m0_wo0_mtree_mult1_18_align_21_q));
    u0_m0_wo0_mtree_mult1_18_result_add_0_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_18_result_add_0_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_18_result_add_0_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_18_result_add_0_1_a) + SIGNED(u0_m0_wo0_mtree_mult1_18_result_add_0_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_18_result_add_0_1_q <= u0_m0_wo0_mtree_mult1_18_result_add_0_1_o(48 downto 0);

    -- u0_m0_wo0_mtree_mult1_18_im3_shift0(BITSHIFT,1337)@11
    u0_m0_wo0_mtree_mult1_18_im3_shift0_qint <= u0_m0_wo0_mtree_mult1_18_bs2_merged_bit_select_b & "00000000000000000";
    u0_m0_wo0_mtree_mult1_18_im3_shift0_q <= u0_m0_wo0_mtree_mult1_18_im3_shift0_qint(23 downto 0);

    -- u0_m0_wo0_mtree_mult1_18_im3_sub_1(SUB,1338)@11 + 1
    u0_m0_wo0_mtree_mult1_18_im3_sub_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((24 downto 24 => u0_m0_wo0_mtree_mult1_18_im3_shift0_q(23)) & u0_m0_wo0_mtree_mult1_18_im3_shift0_q));
    u0_m0_wo0_mtree_mult1_18_im3_sub_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((24 downto 7 => u0_m0_wo0_mtree_mult1_18_bs2_merged_bit_select_b(6)) & u0_m0_wo0_mtree_mult1_18_bs2_merged_bit_select_b));
    u0_m0_wo0_mtree_mult1_18_im3_sub_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_18_im3_sub_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_18_im3_sub_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_18_im3_sub_1_a) - SIGNED(u0_m0_wo0_mtree_mult1_18_im3_sub_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_18_im3_sub_1_q <= u0_m0_wo0_mtree_mult1_18_im3_sub_1_o(24 downto 0);

    -- u0_m0_wo0_mtree_mult1_18_align_17(BITSHIFT,564)@12
    u0_m0_wo0_mtree_mult1_18_align_17_qint <= u0_m0_wo0_mtree_mult1_18_im3_sub_1_q & "00000000000000000";
    u0_m0_wo0_mtree_mult1_18_align_17_q <= u0_m0_wo0_mtree_mult1_18_align_17_qint(41 downto 0);

    -- u0_m0_wo0_mtree_mult1_18_im11_shift0(BITSHIFT,1341)@11
    u0_m0_wo0_mtree_mult1_18_im11_shift0_qint <= u0_m0_wo0_mtree_mult1_18_bjB10_q & "00000000000000000";
    u0_m0_wo0_mtree_mult1_18_im11_shift0_q <= u0_m0_wo0_mtree_mult1_18_im11_shift0_qint(34 downto 0);

    -- u0_m0_wo0_mtree_mult1_18_im11_sub_1(SUB,1342)@11 + 1
    u0_m0_wo0_mtree_mult1_18_im11_sub_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((35 downto 35 => u0_m0_wo0_mtree_mult1_18_im11_shift0_q(34)) & u0_m0_wo0_mtree_mult1_18_im11_shift0_q));
    u0_m0_wo0_mtree_mult1_18_im11_sub_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((35 downto 18 => u0_m0_wo0_mtree_mult1_18_bjB10_q(17)) & u0_m0_wo0_mtree_mult1_18_bjB10_q));
    u0_m0_wo0_mtree_mult1_18_im11_sub_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_18_im11_sub_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_18_im11_sub_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_18_im11_sub_1_a) - SIGNED(u0_m0_wo0_mtree_mult1_18_im11_sub_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_18_im11_sub_1_q <= u0_m0_wo0_mtree_mult1_18_im11_sub_1_o(35 downto 0);

    -- u0_m0_wo0_mtree_mult1_18_result_add_0_0(ADD,570)@12 + 1
    u0_m0_wo0_mtree_mult1_18_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((42 downto 36 => u0_m0_wo0_mtree_mult1_18_im11_sub_1_q(35)) & u0_m0_wo0_mtree_mult1_18_im11_sub_1_q));
    u0_m0_wo0_mtree_mult1_18_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((42 downto 42 => u0_m0_wo0_mtree_mult1_18_align_17_q(41)) & u0_m0_wo0_mtree_mult1_18_align_17_q));
    u0_m0_wo0_mtree_mult1_18_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_18_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_18_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_18_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_18_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_18_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_18_result_add_0_0_o(42 downto 0);

    -- u0_m0_wo0_mtree_mult1_18_result_add_1_0(ADD,572)@13 + 1
    u0_m0_wo0_mtree_mult1_18_result_add_1_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((49 downto 43 => u0_m0_wo0_mtree_mult1_18_result_add_0_0_q(42)) & u0_m0_wo0_mtree_mult1_18_result_add_0_0_q));
    u0_m0_wo0_mtree_mult1_18_result_add_1_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((49 downto 49 => u0_m0_wo0_mtree_mult1_18_result_add_0_1_q(48)) & u0_m0_wo0_mtree_mult1_18_result_add_0_1_q));
    u0_m0_wo0_mtree_mult1_18_result_add_1_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_18_result_add_1_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_18_result_add_1_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_18_result_add_1_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_18_result_add_1_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_18_result_add_1_0_q <= u0_m0_wo0_mtree_mult1_18_result_add_1_0_o(49 downto 0);

    -- u0_m0_wo0_mtree_add0_9(ADD,142)@14 + 1
    u0_m0_wo0_mtree_add0_9_a <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_18_result_add_1_0_q(48 downto 0));
    u0_m0_wo0_mtree_add0_9_b <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_19_result_add_1_0_q(48 downto 0));
    u0_m0_wo0_mtree_add0_9_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_9_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_9_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_9_a) + SIGNED(u0_m0_wo0_mtree_add0_9_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_9_q <= u0_m0_wo0_mtree_add0_9_o(48 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr19(DELAY,38)@10
    u0_m0_wo0_wi0_r0_delayr19 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr18_q, xout => u0_m0_wo0_wi0_r0_delayr19_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_17_bs2_merged_bit_select(BITSELECT,2996)@10
    u0_m0_wo0_mtree_mult1_17_bs2_merged_bit_select_b <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr19_q(23 downto 17));
    u0_m0_wo0_mtree_mult1_17_bs2_merged_bit_select_c <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr19_q(16 downto 0));

    -- d_u0_m0_wo0_mtree_mult1_17_bs2_merged_bit_select_b_11(DELAY,3078)@10 + 1
    d_u0_m0_wo0_mtree_mult1_17_bs2_merged_bit_select_b_11 : dspba_delay
    GENERIC MAP ( width => 7, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_mtree_mult1_17_bs2_merged_bit_select_b, xout => d_u0_m0_wo0_mtree_mult1_17_bs2_merged_bit_select_b_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_17_im0_shift2(BITSHIFT,1345)@11
    u0_m0_wo0_mtree_mult1_17_im0_shift2_qint <= d_u0_m0_wo0_mtree_mult1_17_bs2_merged_bit_select_b_11_q & "000000";
    u0_m0_wo0_mtree_mult1_17_im0_shift2_q <= u0_m0_wo0_mtree_mult1_17_im0_shift2_qint(12 downto 0);

    -- u0_m0_wo0_mtree_mult1_17_im0_shift0(BITSHIFT,1343)@10
    u0_m0_wo0_mtree_mult1_17_im0_shift0_qint <= u0_m0_wo0_mtree_mult1_17_bs2_merged_bit_select_b & "000";
    u0_m0_wo0_mtree_mult1_17_im0_shift0_q <= u0_m0_wo0_mtree_mult1_17_im0_shift0_qint(9 downto 0);

    -- u0_m0_wo0_mtree_mult1_17_im0_sub_1(SUB,1344)@10 + 1
    u0_m0_wo0_mtree_mult1_17_im0_sub_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((10 downto 7 => u0_m0_wo0_mtree_mult1_17_bs2_merged_bit_select_b(6)) & u0_m0_wo0_mtree_mult1_17_bs2_merged_bit_select_b));
    u0_m0_wo0_mtree_mult1_17_im0_sub_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((10 downto 10 => u0_m0_wo0_mtree_mult1_17_im0_shift0_q(9)) & u0_m0_wo0_mtree_mult1_17_im0_shift0_q));
    u0_m0_wo0_mtree_mult1_17_im0_sub_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_17_im0_sub_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_17_im0_sub_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_17_im0_sub_1_a) - SIGNED(u0_m0_wo0_mtree_mult1_17_im0_sub_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_17_im0_sub_1_q <= u0_m0_wo0_mtree_mult1_17_im0_sub_1_o(10 downto 0);

    -- u0_m0_wo0_mtree_mult1_17_im0_add_3(ADD,1346)@11 + 1
    u0_m0_wo0_mtree_mult1_17_im0_add_3_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((13 downto 11 => u0_m0_wo0_mtree_mult1_17_im0_sub_1_q(10)) & u0_m0_wo0_mtree_mult1_17_im0_sub_1_q));
    u0_m0_wo0_mtree_mult1_17_im0_add_3_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((13 downto 13 => u0_m0_wo0_mtree_mult1_17_im0_shift2_q(12)) & u0_m0_wo0_mtree_mult1_17_im0_shift2_q));
    u0_m0_wo0_mtree_mult1_17_im0_add_3_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_17_im0_add_3_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_17_im0_add_3_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_17_im0_add_3_a) + SIGNED(u0_m0_wo0_mtree_mult1_17_im0_add_3_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_17_im0_add_3_q <= u0_m0_wo0_mtree_mult1_17_im0_add_3_o(13 downto 0);

    -- u0_m0_wo0_mtree_mult1_17_align_21(BITSHIFT,594)@12
    u0_m0_wo0_mtree_mult1_17_align_21_qint <= u0_m0_wo0_mtree_mult1_17_im0_add_3_q & "0000000000000000000000000000000000";
    u0_m0_wo0_mtree_mult1_17_align_21_q <= u0_m0_wo0_mtree_mult1_17_align_21_qint(47 downto 0);

    -- u0_m0_wo0_mtree_mult1_17_bjB10(BITJOIN,583)@10
    u0_m0_wo0_mtree_mult1_17_bjB10_q <= GND_q & u0_m0_wo0_mtree_mult1_17_bs2_merged_bit_select_c;

    -- d_u0_m0_wo0_mtree_mult1_17_bjB10_q_11(DELAY,3050)@10 + 1
    d_u0_m0_wo0_mtree_mult1_17_bjB10_q_11 : dspba_delay
    GENERIC MAP ( width => 18, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_mtree_mult1_17_bjB10_q, xout => d_u0_m0_wo0_mtree_mult1_17_bjB10_q_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_17_im7_shift2(BITSHIFT,1361)@11
    u0_m0_wo0_mtree_mult1_17_im7_shift2_qint <= d_u0_m0_wo0_mtree_mult1_17_bjB10_q_11_q & "000000";
    u0_m0_wo0_mtree_mult1_17_im7_shift2_q <= u0_m0_wo0_mtree_mult1_17_im7_shift2_qint(23 downto 0);

    -- u0_m0_wo0_mtree_mult1_17_im7_shift0(BITSHIFT,1359)@10
    u0_m0_wo0_mtree_mult1_17_im7_shift0_qint <= u0_m0_wo0_mtree_mult1_17_bjB10_q & "000";
    u0_m0_wo0_mtree_mult1_17_im7_shift0_q <= u0_m0_wo0_mtree_mult1_17_im7_shift0_qint(20 downto 0);

    -- u0_m0_wo0_mtree_mult1_17_im7_sub_1(SUB,1360)@10 + 1
    u0_m0_wo0_mtree_mult1_17_im7_sub_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 18 => u0_m0_wo0_mtree_mult1_17_bjB10_q(17)) & u0_m0_wo0_mtree_mult1_17_bjB10_q));
    u0_m0_wo0_mtree_mult1_17_im7_sub_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 21 => u0_m0_wo0_mtree_mult1_17_im7_shift0_q(20)) & u0_m0_wo0_mtree_mult1_17_im7_shift0_q));
    u0_m0_wo0_mtree_mult1_17_im7_sub_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_17_im7_sub_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_17_im7_sub_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_17_im7_sub_1_a) - SIGNED(u0_m0_wo0_mtree_mult1_17_im7_sub_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_17_im7_sub_1_q <= u0_m0_wo0_mtree_mult1_17_im7_sub_1_o(21 downto 0);

    -- u0_m0_wo0_mtree_mult1_17_im7_add_3(ADD,1362)@11 + 1
    u0_m0_wo0_mtree_mult1_17_im7_add_3_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((24 downto 22 => u0_m0_wo0_mtree_mult1_17_im7_sub_1_q(21)) & u0_m0_wo0_mtree_mult1_17_im7_sub_1_q));
    u0_m0_wo0_mtree_mult1_17_im7_add_3_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((24 downto 24 => u0_m0_wo0_mtree_mult1_17_im7_shift2_q(23)) & u0_m0_wo0_mtree_mult1_17_im7_shift2_q));
    u0_m0_wo0_mtree_mult1_17_im7_add_3_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_17_im7_add_3_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_17_im7_add_3_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_17_im7_add_3_a) + SIGNED(u0_m0_wo0_mtree_mult1_17_im7_add_3_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_17_im7_add_3_q <= u0_m0_wo0_mtree_mult1_17_im7_add_3_o(24 downto 0);

    -- u0_m0_wo0_mtree_mult1_17_align_19(BITSHIFT,592)@12
    u0_m0_wo0_mtree_mult1_17_align_19_qint <= u0_m0_wo0_mtree_mult1_17_im7_add_3_q & "00000000000000000";
    u0_m0_wo0_mtree_mult1_17_align_19_q <= u0_m0_wo0_mtree_mult1_17_align_19_qint(41 downto 0);

    -- u0_m0_wo0_mtree_mult1_17_result_add_0_1(ADD,597)@12 + 1
    u0_m0_wo0_mtree_mult1_17_result_add_0_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 42 => u0_m0_wo0_mtree_mult1_17_align_19_q(41)) & u0_m0_wo0_mtree_mult1_17_align_19_q));
    u0_m0_wo0_mtree_mult1_17_result_add_0_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 48 => u0_m0_wo0_mtree_mult1_17_align_21_q(47)) & u0_m0_wo0_mtree_mult1_17_align_21_q));
    u0_m0_wo0_mtree_mult1_17_result_add_0_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_17_result_add_0_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_17_result_add_0_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_17_result_add_0_1_a) + SIGNED(u0_m0_wo0_mtree_mult1_17_result_add_0_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_17_result_add_0_1_q <= u0_m0_wo0_mtree_mult1_17_result_add_0_1_o(48 downto 0);

    -- u0_m0_wo0_mtree_mult1_17_im3(MULT,576)@10 + 2
    u0_m0_wo0_mtree_mult1_17_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_19_bjA5_q_const_q);
    u0_m0_wo0_mtree_mult1_17_im3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_17_bs2_merged_bit_select_b);
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

    -- u0_m0_wo0_mtree_mult1_17_align_17(BITSHIFT,590)@12
    u0_m0_wo0_mtree_mult1_17_align_17_qint <= u0_m0_wo0_mtree_mult1_17_im3_q & "00000000000000000";
    u0_m0_wo0_mtree_mult1_17_align_17_q <= u0_m0_wo0_mtree_mult1_17_align_17_qint(41 downto 0);

    -- u0_m0_wo0_mtree_mult1_17_im11(MULT,584)@10 + 2
    u0_m0_wo0_mtree_mult1_17_im11_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_19_bjA5_q_const_q);
    u0_m0_wo0_mtree_mult1_17_im11_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_17_bjB10_q);
    u0_m0_wo0_mtree_mult1_17_im11_reset <= areset;
    u0_m0_wo0_mtree_mult1_17_im11_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 18,
        lpm_widthp => 36,
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

    -- u0_m0_wo0_mtree_mult1_17_result_add_0_0(ADD,596)@12 + 1
    u0_m0_wo0_mtree_mult1_17_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((42 downto 36 => u0_m0_wo0_mtree_mult1_17_im11_q(35)) & u0_m0_wo0_mtree_mult1_17_im11_q));
    u0_m0_wo0_mtree_mult1_17_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((42 downto 42 => u0_m0_wo0_mtree_mult1_17_align_17_q(41)) & u0_m0_wo0_mtree_mult1_17_align_17_q));
    u0_m0_wo0_mtree_mult1_17_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_17_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_17_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_17_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_17_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_17_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_17_result_add_0_0_o(42 downto 0);

    -- u0_m0_wo0_mtree_mult1_17_result_add_1_0(ADD,598)@13 + 1
    u0_m0_wo0_mtree_mult1_17_result_add_1_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((49 downto 43 => u0_m0_wo0_mtree_mult1_17_result_add_0_0_q(42)) & u0_m0_wo0_mtree_mult1_17_result_add_0_0_q));
    u0_m0_wo0_mtree_mult1_17_result_add_1_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((49 downto 49 => u0_m0_wo0_mtree_mult1_17_result_add_0_1_q(48)) & u0_m0_wo0_mtree_mult1_17_result_add_0_1_q));
    u0_m0_wo0_mtree_mult1_17_result_add_1_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_17_result_add_1_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_17_result_add_1_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_17_result_add_1_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_17_result_add_1_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_17_result_add_1_0_q <= u0_m0_wo0_mtree_mult1_17_result_add_1_0_o(49 downto 0);

    -- u0_m0_wo0_mtree_mult1_16_im0_shift0(BITSHIFT,1375)@11
    u0_m0_wo0_mtree_mult1_16_im0_shift0_qint <= d_u0_m0_wo0_mtree_mult1_16_bs2_merged_bit_select_b_11_q & "00";
    u0_m0_wo0_mtree_mult1_16_im0_shift0_q <= u0_m0_wo0_mtree_mult1_16_im0_shift0_qint(8 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr20(DELAY,39)@10
    u0_m0_wo0_wi0_r0_delayr20 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr19_q, xout => u0_m0_wo0_wi0_r0_delayr20_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_16_bs2_merged_bit_select(BITSELECT,2997)@10
    u0_m0_wo0_mtree_mult1_16_bs2_merged_bit_select_b <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr20_q(23 downto 17));
    u0_m0_wo0_mtree_mult1_16_bs2_merged_bit_select_c <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr20_q(16 downto 0));

    -- d_u0_m0_wo0_mtree_mult1_16_bs2_merged_bit_select_b_11(DELAY,3079)@10 + 1
    d_u0_m0_wo0_mtree_mult1_16_bs2_merged_bit_select_b_11 : dspba_delay
    GENERIC MAP ( width => 7, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_mtree_mult1_16_bs2_merged_bit_select_b, xout => d_u0_m0_wo0_mtree_mult1_16_bs2_merged_bit_select_b_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_16_im0_add_1(ADD,1376)@11 + 1
    u0_m0_wo0_mtree_mult1_16_im0_add_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((9 downto 7 => d_u0_m0_wo0_mtree_mult1_16_bs2_merged_bit_select_b_11_q(6)) & d_u0_m0_wo0_mtree_mult1_16_bs2_merged_bit_select_b_11_q));
    u0_m0_wo0_mtree_mult1_16_im0_add_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((9 downto 9 => u0_m0_wo0_mtree_mult1_16_im0_shift0_q(8)) & u0_m0_wo0_mtree_mult1_16_im0_shift0_q));
    u0_m0_wo0_mtree_mult1_16_im0_add_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_16_im0_add_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_16_im0_add_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_16_im0_add_1_a) + SIGNED(u0_m0_wo0_mtree_mult1_16_im0_add_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_16_im0_add_1_q <= u0_m0_wo0_mtree_mult1_16_im0_add_1_o(9 downto 0);

    -- u0_m0_wo0_mtree_mult1_16_im0_shift2(BITSHIFT,1377)@12
    u0_m0_wo0_mtree_mult1_16_im0_shift2_qint <= u0_m0_wo0_mtree_mult1_16_im0_add_1_q & "000";
    u0_m0_wo0_mtree_mult1_16_im0_shift2_q <= u0_m0_wo0_mtree_mult1_16_im0_shift2_qint(12 downto 0);

    -- u0_m0_wo0_mtree_mult1_16_align_21(BITSHIFT,620)@12
    u0_m0_wo0_mtree_mult1_16_align_21_qint <= STD_LOGIC_VECTOR((13 downto 13 => u0_m0_wo0_mtree_mult1_16_im0_shift2_q(12)) & u0_m0_wo0_mtree_mult1_16_im0_shift2_q) & "0000000000000000000000000000000000";
    u0_m0_wo0_mtree_mult1_16_align_21_q <= u0_m0_wo0_mtree_mult1_16_align_21_qint(47 downto 0);

    -- u0_m0_wo0_mtree_mult1_16_im7_shift0(BITSHIFT,1391)@11
    u0_m0_wo0_mtree_mult1_16_im7_shift0_qint <= d_u0_m0_wo0_mtree_mult1_16_bjB10_q_11_q & "00";
    u0_m0_wo0_mtree_mult1_16_im7_shift0_q <= u0_m0_wo0_mtree_mult1_16_im7_shift0_qint(19 downto 0);

    -- u0_m0_wo0_mtree_mult1_16_bjB10(BITJOIN,609)@10
    u0_m0_wo0_mtree_mult1_16_bjB10_q <= GND_q & u0_m0_wo0_mtree_mult1_16_bs2_merged_bit_select_c;

    -- d_u0_m0_wo0_mtree_mult1_16_bjB10_q_11(DELAY,3051)@10 + 1
    d_u0_m0_wo0_mtree_mult1_16_bjB10_q_11 : dspba_delay
    GENERIC MAP ( width => 18, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_mtree_mult1_16_bjB10_q, xout => d_u0_m0_wo0_mtree_mult1_16_bjB10_q_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_16_im7_add_1(ADD,1392)@11 + 1
    u0_m0_wo0_mtree_mult1_16_im7_add_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((20 downto 18 => d_u0_m0_wo0_mtree_mult1_16_bjB10_q_11_q(17)) & d_u0_m0_wo0_mtree_mult1_16_bjB10_q_11_q));
    u0_m0_wo0_mtree_mult1_16_im7_add_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((20 downto 20 => u0_m0_wo0_mtree_mult1_16_im7_shift0_q(19)) & u0_m0_wo0_mtree_mult1_16_im7_shift0_q));
    u0_m0_wo0_mtree_mult1_16_im7_add_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_16_im7_add_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_16_im7_add_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_16_im7_add_1_a) + SIGNED(u0_m0_wo0_mtree_mult1_16_im7_add_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_16_im7_add_1_q <= u0_m0_wo0_mtree_mult1_16_im7_add_1_o(20 downto 0);

    -- u0_m0_wo0_mtree_mult1_16_im7_shift2(BITSHIFT,1393)@12
    u0_m0_wo0_mtree_mult1_16_im7_shift2_qint <= u0_m0_wo0_mtree_mult1_16_im7_add_1_q & "000";
    u0_m0_wo0_mtree_mult1_16_im7_shift2_q <= u0_m0_wo0_mtree_mult1_16_im7_shift2_qint(23 downto 0);

    -- u0_m0_wo0_mtree_mult1_16_align_19(BITSHIFT,618)@12
    u0_m0_wo0_mtree_mult1_16_align_19_qint <= STD_LOGIC_VECTOR((24 downto 24 => u0_m0_wo0_mtree_mult1_16_im7_shift2_q(23)) & u0_m0_wo0_mtree_mult1_16_im7_shift2_q) & "00000000000000000";
    u0_m0_wo0_mtree_mult1_16_align_19_q <= u0_m0_wo0_mtree_mult1_16_align_19_qint(41 downto 0);

    -- u0_m0_wo0_mtree_mult1_16_result_add_0_1(ADD,623)@12 + 1
    u0_m0_wo0_mtree_mult1_16_result_add_0_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 42 => u0_m0_wo0_mtree_mult1_16_align_19_q(41)) & u0_m0_wo0_mtree_mult1_16_align_19_q));
    u0_m0_wo0_mtree_mult1_16_result_add_0_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 48 => u0_m0_wo0_mtree_mult1_16_align_21_q(47)) & u0_m0_wo0_mtree_mult1_16_align_21_q));
    u0_m0_wo0_mtree_mult1_16_result_add_0_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_16_result_add_0_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_16_result_add_0_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_16_result_add_0_1_a) + SIGNED(u0_m0_wo0_mtree_mult1_16_result_add_0_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_16_result_add_0_1_q <= u0_m0_wo0_mtree_mult1_16_result_add_0_1_o(48 downto 0);

    -- u0_m0_wo0_mtree_mult1_16_im3(MULT,602)@10 + 2
    u0_m0_wo0_mtree_mult1_16_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_20_bjA5_q_const_q);
    u0_m0_wo0_mtree_mult1_16_im3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_16_bs2_merged_bit_select_b);
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

    -- u0_m0_wo0_mtree_mult1_16_align_17(BITSHIFT,616)@12
    u0_m0_wo0_mtree_mult1_16_align_17_qint <= u0_m0_wo0_mtree_mult1_16_im3_q & "00000000000000000";
    u0_m0_wo0_mtree_mult1_16_align_17_q <= u0_m0_wo0_mtree_mult1_16_align_17_qint(41 downto 0);

    -- u0_m0_wo0_mtree_mult1_16_im11(MULT,610)@10 + 2
    u0_m0_wo0_mtree_mult1_16_im11_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_20_bjA5_q_const_q);
    u0_m0_wo0_mtree_mult1_16_im11_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_16_bjB10_q);
    u0_m0_wo0_mtree_mult1_16_im11_reset <= areset;
    u0_m0_wo0_mtree_mult1_16_im11_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 18,
        lpm_widthp => 36,
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

    -- u0_m0_wo0_mtree_mult1_16_result_add_0_0(ADD,622)@12 + 1
    u0_m0_wo0_mtree_mult1_16_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((42 downto 36 => u0_m0_wo0_mtree_mult1_16_im11_q(35)) & u0_m0_wo0_mtree_mult1_16_im11_q));
    u0_m0_wo0_mtree_mult1_16_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((42 downto 42 => u0_m0_wo0_mtree_mult1_16_align_17_q(41)) & u0_m0_wo0_mtree_mult1_16_align_17_q));
    u0_m0_wo0_mtree_mult1_16_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_16_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_16_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_16_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_16_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_16_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_16_result_add_0_0_o(42 downto 0);

    -- u0_m0_wo0_mtree_mult1_16_result_add_1_0(ADD,624)@13 + 1
    u0_m0_wo0_mtree_mult1_16_result_add_1_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((49 downto 43 => u0_m0_wo0_mtree_mult1_16_result_add_0_0_q(42)) & u0_m0_wo0_mtree_mult1_16_result_add_0_0_q));
    u0_m0_wo0_mtree_mult1_16_result_add_1_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((49 downto 49 => u0_m0_wo0_mtree_mult1_16_result_add_0_1_q(48)) & u0_m0_wo0_mtree_mult1_16_result_add_0_1_q));
    u0_m0_wo0_mtree_mult1_16_result_add_1_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_16_result_add_1_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_16_result_add_1_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_16_result_add_1_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_16_result_add_1_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_16_result_add_1_0_q <= u0_m0_wo0_mtree_mult1_16_result_add_1_0_o(49 downto 0);

    -- u0_m0_wo0_mtree_add0_8(ADD,141)@14 + 1
    u0_m0_wo0_mtree_add0_8_a <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_16_result_add_1_0_q(48 downto 0));
    u0_m0_wo0_mtree_add0_8_b <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_17_result_add_1_0_q(48 downto 0));
    u0_m0_wo0_mtree_add0_8_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_8_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_8_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_8_a) + SIGNED(u0_m0_wo0_mtree_add0_8_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_8_q <= u0_m0_wo0_mtree_add0_8_o(48 downto 0);

    -- u0_m0_wo0_mtree_add1_4(ADD,155)@15 + 1
    u0_m0_wo0_mtree_add1_4_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((49 downto 49 => u0_m0_wo0_mtree_add0_8_q(48)) & u0_m0_wo0_mtree_add0_8_q));
    u0_m0_wo0_mtree_add1_4_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((49 downto 49 => u0_m0_wo0_mtree_add0_9_q(48)) & u0_m0_wo0_mtree_add0_9_q));
    u0_m0_wo0_mtree_add1_4_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_4_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_4_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_4_a) + SIGNED(u0_m0_wo0_mtree_add1_4_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_4_q <= u0_m0_wo0_mtree_add1_4_o(49 downto 0);

    -- u0_m0_wo0_mtree_add2_2(ADD,162)@16 + 1
    u0_m0_wo0_mtree_add2_2_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((50 downto 50 => u0_m0_wo0_mtree_add1_4_q(49)) & u0_m0_wo0_mtree_add1_4_q));
    u0_m0_wo0_mtree_add2_2_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((50 downto 50 => u0_m0_wo0_mtree_add1_5_q(49)) & u0_m0_wo0_mtree_add1_5_q));
    u0_m0_wo0_mtree_add2_2_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add2_2_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add2_2_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add2_2_a) + SIGNED(u0_m0_wo0_mtree_add2_2_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add2_2_q <= u0_m0_wo0_mtree_add2_2_o(50 downto 0);

    -- u0_m0_wo0_mtree_add3_1(ADD,166)@17 + 1
    u0_m0_wo0_mtree_add3_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((51 downto 51 => u0_m0_wo0_mtree_add2_2_q(50)) & u0_m0_wo0_mtree_add2_2_q));
    u0_m0_wo0_mtree_add3_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((51 downto 49 => u0_m0_wo0_mtree_add2_3_q(48)) & u0_m0_wo0_mtree_add2_3_q));
    u0_m0_wo0_mtree_add3_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add3_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add3_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add3_1_a) + SIGNED(u0_m0_wo0_mtree_add3_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add3_1_q <= u0_m0_wo0_mtree_add3_1_o(51 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr21(DELAY,40)@10
    u0_m0_wo0_wi0_r0_delayr21 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr20_q, xout => u0_m0_wo0_wi0_r0_delayr21_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_r0_delayr21_q_11(DELAY,3032)@10 + 1
    d_u0_m0_wo0_wi0_r0_delayr21_q_11 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr21_q, xout => d_u0_m0_wo0_wi0_r0_delayr21_q_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_15_bs2_merged_bit_select(BITSELECT,2998)@11
    u0_m0_wo0_mtree_mult1_15_bs2_merged_bit_select_b <= STD_LOGIC_VECTOR(d_u0_m0_wo0_wi0_r0_delayr21_q_11_q(23 downto 17));
    u0_m0_wo0_mtree_mult1_15_bs2_merged_bit_select_c <= STD_LOGIC_VECTOR(d_u0_m0_wo0_wi0_r0_delayr21_q_11_q(16 downto 0));

    -- d_u0_m0_wo0_mtree_mult1_15_bs2_merged_bit_select_b_12(DELAY,3080)@11 + 1
    d_u0_m0_wo0_mtree_mult1_15_bs2_merged_bit_select_b_12 : dspba_delay
    GENERIC MAP ( width => 7, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_mtree_mult1_15_bs2_merged_bit_select_b, xout => d_u0_m0_wo0_mtree_mult1_15_bs2_merged_bit_select_b_12_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_15_im0_shift2(BITSHIFT,1409)@12
    u0_m0_wo0_mtree_mult1_15_im0_shift2_qint <= d_u0_m0_wo0_mtree_mult1_15_bs2_merged_bit_select_b_12_q & "0000";
    u0_m0_wo0_mtree_mult1_15_im0_shift2_q <= u0_m0_wo0_mtree_mult1_15_im0_shift2_qint(10 downto 0);

    -- u0_m0_wo0_mtree_mult1_15_im0_shift0(BITSHIFT,1407)@11
    u0_m0_wo0_mtree_mult1_15_im0_shift0_qint <= u0_m0_wo0_mtree_mult1_15_bs2_merged_bit_select_b & "0";
    u0_m0_wo0_mtree_mult1_15_im0_shift0_q <= u0_m0_wo0_mtree_mult1_15_im0_shift0_qint(7 downto 0);

    -- u0_m0_wo0_mtree_mult1_15_im0_add_1(ADD,1408)@11 + 1
    u0_m0_wo0_mtree_mult1_15_im0_add_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((8 downto 7 => u0_m0_wo0_mtree_mult1_15_bs2_merged_bit_select_b(6)) & u0_m0_wo0_mtree_mult1_15_bs2_merged_bit_select_b));
    u0_m0_wo0_mtree_mult1_15_im0_add_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((8 downto 8 => u0_m0_wo0_mtree_mult1_15_im0_shift0_q(7)) & u0_m0_wo0_mtree_mult1_15_im0_shift0_q));
    u0_m0_wo0_mtree_mult1_15_im0_add_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_15_im0_add_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_15_im0_add_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_15_im0_add_1_a) + SIGNED(u0_m0_wo0_mtree_mult1_15_im0_add_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_15_im0_add_1_q <= u0_m0_wo0_mtree_mult1_15_im0_add_1_o(8 downto 0);

    -- u0_m0_wo0_mtree_mult1_15_im0_add_3(ADD,1410)@12 + 1
    u0_m0_wo0_mtree_mult1_15_im0_add_3_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((11 downto 9 => u0_m0_wo0_mtree_mult1_15_im0_add_1_q(8)) & u0_m0_wo0_mtree_mult1_15_im0_add_1_q));
    u0_m0_wo0_mtree_mult1_15_im0_add_3_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((11 downto 11 => u0_m0_wo0_mtree_mult1_15_im0_shift2_q(10)) & u0_m0_wo0_mtree_mult1_15_im0_shift2_q));
    u0_m0_wo0_mtree_mult1_15_im0_add_3_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_15_im0_add_3_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_15_im0_add_3_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_15_im0_add_3_a) + SIGNED(u0_m0_wo0_mtree_mult1_15_im0_add_3_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_15_im0_add_3_q <= u0_m0_wo0_mtree_mult1_15_im0_add_3_o(11 downto 0);

    -- u0_m0_wo0_mtree_mult1_15_align_21(BITSHIFT,646)@13
    u0_m0_wo0_mtree_mult1_15_align_21_qint <= STD_LOGIC_VECTOR((12 downto 12 => u0_m0_wo0_mtree_mult1_15_im0_add_3_q(11)) & u0_m0_wo0_mtree_mult1_15_im0_add_3_q) & "0000000000000000000000000000000000";
    u0_m0_wo0_mtree_mult1_15_align_21_q <= u0_m0_wo0_mtree_mult1_15_align_21_qint(46 downto 0);

    -- u0_m0_wo0_mtree_mult1_15_bjB10(BITJOIN,635)@11
    u0_m0_wo0_mtree_mult1_15_bjB10_q <= GND_q & u0_m0_wo0_mtree_mult1_15_bs2_merged_bit_select_c;

    -- d_u0_m0_wo0_mtree_mult1_15_bjB10_q_12(DELAY,3052)@11 + 1
    d_u0_m0_wo0_mtree_mult1_15_bjB10_q_12 : dspba_delay
    GENERIC MAP ( width => 18, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_mtree_mult1_15_bjB10_q, xout => d_u0_m0_wo0_mtree_mult1_15_bjB10_q_12_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_15_im7_shift2(BITSHIFT,1425)@12
    u0_m0_wo0_mtree_mult1_15_im7_shift2_qint <= d_u0_m0_wo0_mtree_mult1_15_bjB10_q_12_q & "0000";
    u0_m0_wo0_mtree_mult1_15_im7_shift2_q <= u0_m0_wo0_mtree_mult1_15_im7_shift2_qint(21 downto 0);

    -- u0_m0_wo0_mtree_mult1_15_im7_shift0(BITSHIFT,1423)@11
    u0_m0_wo0_mtree_mult1_15_im7_shift0_qint <= u0_m0_wo0_mtree_mult1_15_bjB10_q & "0";
    u0_m0_wo0_mtree_mult1_15_im7_shift0_q <= u0_m0_wo0_mtree_mult1_15_im7_shift0_qint(18 downto 0);

    -- u0_m0_wo0_mtree_mult1_15_im7_add_1(ADD,1424)@11 + 1
    u0_m0_wo0_mtree_mult1_15_im7_add_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((19 downto 18 => u0_m0_wo0_mtree_mult1_15_bjB10_q(17)) & u0_m0_wo0_mtree_mult1_15_bjB10_q));
    u0_m0_wo0_mtree_mult1_15_im7_add_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((19 downto 19 => u0_m0_wo0_mtree_mult1_15_im7_shift0_q(18)) & u0_m0_wo0_mtree_mult1_15_im7_shift0_q));
    u0_m0_wo0_mtree_mult1_15_im7_add_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_15_im7_add_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_15_im7_add_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_15_im7_add_1_a) + SIGNED(u0_m0_wo0_mtree_mult1_15_im7_add_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_15_im7_add_1_q <= u0_m0_wo0_mtree_mult1_15_im7_add_1_o(19 downto 0);

    -- u0_m0_wo0_mtree_mult1_15_im7_add_3(ADD,1426)@12 + 1
    u0_m0_wo0_mtree_mult1_15_im7_add_3_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((22 downto 20 => u0_m0_wo0_mtree_mult1_15_im7_add_1_q(19)) & u0_m0_wo0_mtree_mult1_15_im7_add_1_q));
    u0_m0_wo0_mtree_mult1_15_im7_add_3_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((22 downto 22 => u0_m0_wo0_mtree_mult1_15_im7_shift2_q(21)) & u0_m0_wo0_mtree_mult1_15_im7_shift2_q));
    u0_m0_wo0_mtree_mult1_15_im7_add_3_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_15_im7_add_3_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_15_im7_add_3_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_15_im7_add_3_a) + SIGNED(u0_m0_wo0_mtree_mult1_15_im7_add_3_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_15_im7_add_3_q <= u0_m0_wo0_mtree_mult1_15_im7_add_3_o(22 downto 0);

    -- u0_m0_wo0_mtree_mult1_15_align_19(BITSHIFT,644)@13
    u0_m0_wo0_mtree_mult1_15_align_19_qint <= STD_LOGIC_VECTOR((23 downto 23 => u0_m0_wo0_mtree_mult1_15_im7_add_3_q(22)) & u0_m0_wo0_mtree_mult1_15_im7_add_3_q) & "00000000000000000";
    u0_m0_wo0_mtree_mult1_15_align_19_q <= u0_m0_wo0_mtree_mult1_15_align_19_qint(40 downto 0);

    -- u0_m0_wo0_mtree_mult1_15_result_add_0_1(ADD,649)@13 + 1
    u0_m0_wo0_mtree_mult1_15_result_add_0_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((47 downto 41 => u0_m0_wo0_mtree_mult1_15_align_19_q(40)) & u0_m0_wo0_mtree_mult1_15_align_19_q));
    u0_m0_wo0_mtree_mult1_15_result_add_0_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((47 downto 47 => u0_m0_wo0_mtree_mult1_15_align_21_q(46)) & u0_m0_wo0_mtree_mult1_15_align_21_q));
    u0_m0_wo0_mtree_mult1_15_result_add_0_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_15_result_add_0_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_15_result_add_0_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_15_result_add_0_1_a) + SIGNED(u0_m0_wo0_mtree_mult1_15_result_add_0_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_15_result_add_0_1_q <= u0_m0_wo0_mtree_mult1_15_result_add_0_1_o(47 downto 0);

    -- u0_m0_wo0_mtree_mult1_15_im3(MULT,628)@11 + 2
    u0_m0_wo0_mtree_mult1_15_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_21_bjA5_q_const_q);
    u0_m0_wo0_mtree_mult1_15_im3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_15_bs2_merged_bit_select_b);
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

    -- u0_m0_wo0_mtree_mult1_15_align_17(BITSHIFT,642)@13
    u0_m0_wo0_mtree_mult1_15_align_17_qint <= u0_m0_wo0_mtree_mult1_15_im3_q & "00000000000000000";
    u0_m0_wo0_mtree_mult1_15_align_17_q <= u0_m0_wo0_mtree_mult1_15_align_17_qint(41 downto 0);

    -- u0_m0_wo0_mtree_mult1_15_im11(MULT,636)@11 + 2
    u0_m0_wo0_mtree_mult1_15_im11_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_21_bjA5_q_const_q);
    u0_m0_wo0_mtree_mult1_15_im11_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_15_bjB10_q);
    u0_m0_wo0_mtree_mult1_15_im11_reset <= areset;
    u0_m0_wo0_mtree_mult1_15_im11_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 18,
        lpm_widthp => 36,
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

    -- u0_m0_wo0_mtree_mult1_15_result_add_0_0(ADD,648)@13 + 1
    u0_m0_wo0_mtree_mult1_15_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((42 downto 36 => u0_m0_wo0_mtree_mult1_15_im11_q(35)) & u0_m0_wo0_mtree_mult1_15_im11_q));
    u0_m0_wo0_mtree_mult1_15_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((42 downto 42 => u0_m0_wo0_mtree_mult1_15_align_17_q(41)) & u0_m0_wo0_mtree_mult1_15_align_17_q));
    u0_m0_wo0_mtree_mult1_15_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_15_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_15_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_15_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_15_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_15_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_15_result_add_0_0_o(42 downto 0);

    -- u0_m0_wo0_mtree_mult1_15_result_add_1_0(ADD,650)@14 + 1
    u0_m0_wo0_mtree_mult1_15_result_add_1_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 43 => u0_m0_wo0_mtree_mult1_15_result_add_0_0_q(42)) & u0_m0_wo0_mtree_mult1_15_result_add_0_0_q));
    u0_m0_wo0_mtree_mult1_15_result_add_1_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 48 => u0_m0_wo0_mtree_mult1_15_result_add_0_1_q(47)) & u0_m0_wo0_mtree_mult1_15_result_add_0_1_q));
    u0_m0_wo0_mtree_mult1_15_result_add_1_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_15_result_add_1_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_15_result_add_1_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_15_result_add_1_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_15_result_add_1_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_15_result_add_1_0_q <= u0_m0_wo0_mtree_mult1_15_result_add_1_0_o(48 downto 0);

    -- u0_m0_wo0_mtree_mult1_13_im0_shift0(BITSHIFT,1439)@11
    u0_m0_wo0_mtree_mult1_13_im0_shift0_qint <= d_u0_m0_wo0_mtree_mult1_13_bs2_merged_bit_select_b_11_q & "00";
    u0_m0_wo0_mtree_mult1_13_im0_shift0_q <= u0_m0_wo0_mtree_mult1_13_im0_shift0_qint(8 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr22(DELAY,41)@10
    u0_m0_wo0_wi0_r0_delayr22 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr21_q, xout => u0_m0_wo0_wi0_r0_delayr22_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_wi0_r0_delayr23(DELAY,42)@10
    u0_m0_wo0_wi0_r0_delayr23 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr22_q, xout => u0_m0_wo0_wi0_r0_delayr23_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_13_bs2_merged_bit_select(BITSELECT,2999)@10
    u0_m0_wo0_mtree_mult1_13_bs2_merged_bit_select_b <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr23_q(23 downto 17));
    u0_m0_wo0_mtree_mult1_13_bs2_merged_bit_select_c <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr23_q(16 downto 0));

    -- d_u0_m0_wo0_mtree_mult1_13_bs2_merged_bit_select_b_11(DELAY,3081)@10 + 1
    d_u0_m0_wo0_mtree_mult1_13_bs2_merged_bit_select_b_11 : dspba_delay
    GENERIC MAP ( width => 7, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_mtree_mult1_13_bs2_merged_bit_select_b, xout => d_u0_m0_wo0_mtree_mult1_13_bs2_merged_bit_select_b_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_13_im0_sub_1(SUB,1440)@11 + 1
    u0_m0_wo0_mtree_mult1_13_im0_sub_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((9 downto 7 => d_u0_m0_wo0_mtree_mult1_13_bs2_merged_bit_select_b_11_q(6)) & d_u0_m0_wo0_mtree_mult1_13_bs2_merged_bit_select_b_11_q));
    u0_m0_wo0_mtree_mult1_13_im0_sub_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((9 downto 9 => u0_m0_wo0_mtree_mult1_13_im0_shift0_q(8)) & u0_m0_wo0_mtree_mult1_13_im0_shift0_q));
    u0_m0_wo0_mtree_mult1_13_im0_sub_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_13_im0_sub_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_13_im0_sub_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_13_im0_sub_1_a) - SIGNED(u0_m0_wo0_mtree_mult1_13_im0_sub_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_13_im0_sub_1_q <= u0_m0_wo0_mtree_mult1_13_im0_sub_1_o(9 downto 0);

    -- u0_m0_wo0_mtree_mult1_13_im0_shift2(BITSHIFT,1441)@12
    u0_m0_wo0_mtree_mult1_13_im0_shift2_qint <= u0_m0_wo0_mtree_mult1_13_im0_sub_1_q & "00";
    u0_m0_wo0_mtree_mult1_13_im0_shift2_q <= u0_m0_wo0_mtree_mult1_13_im0_shift2_qint(11 downto 0);

    -- u0_m0_wo0_mtree_mult1_13_align_21(BITSHIFT,672)@12
    u0_m0_wo0_mtree_mult1_13_align_21_qint <= u0_m0_wo0_mtree_mult1_13_im0_shift2_q & "0000000000000000000000000000000000";
    u0_m0_wo0_mtree_mult1_13_align_21_q <= u0_m0_wo0_mtree_mult1_13_align_21_qint(45 downto 0);

    -- u0_m0_wo0_mtree_mult1_13_im7_shift0(BITSHIFT,1449)@11
    u0_m0_wo0_mtree_mult1_13_im7_shift0_qint <= d_u0_m0_wo0_mtree_mult1_13_bjB10_q_11_q & "00";
    u0_m0_wo0_mtree_mult1_13_im7_shift0_q <= u0_m0_wo0_mtree_mult1_13_im7_shift0_qint(19 downto 0);

    -- u0_m0_wo0_mtree_mult1_13_bjB10(BITJOIN,661)@10
    u0_m0_wo0_mtree_mult1_13_bjB10_q <= GND_q & u0_m0_wo0_mtree_mult1_13_bs2_merged_bit_select_c;

    -- d_u0_m0_wo0_mtree_mult1_13_bjB10_q_11(DELAY,3053)@10 + 1
    d_u0_m0_wo0_mtree_mult1_13_bjB10_q_11 : dspba_delay
    GENERIC MAP ( width => 18, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_mtree_mult1_13_bjB10_q, xout => d_u0_m0_wo0_mtree_mult1_13_bjB10_q_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_13_im7_sub_1(SUB,1450)@11 + 1
    u0_m0_wo0_mtree_mult1_13_im7_sub_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((20 downto 18 => d_u0_m0_wo0_mtree_mult1_13_bjB10_q_11_q(17)) & d_u0_m0_wo0_mtree_mult1_13_bjB10_q_11_q));
    u0_m0_wo0_mtree_mult1_13_im7_sub_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((20 downto 20 => u0_m0_wo0_mtree_mult1_13_im7_shift0_q(19)) & u0_m0_wo0_mtree_mult1_13_im7_shift0_q));
    u0_m0_wo0_mtree_mult1_13_im7_sub_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_13_im7_sub_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_13_im7_sub_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_13_im7_sub_1_a) - SIGNED(u0_m0_wo0_mtree_mult1_13_im7_sub_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_13_im7_sub_1_q <= u0_m0_wo0_mtree_mult1_13_im7_sub_1_o(20 downto 0);

    -- u0_m0_wo0_mtree_mult1_13_im7_shift2(BITSHIFT,1451)@12
    u0_m0_wo0_mtree_mult1_13_im7_shift2_qint <= u0_m0_wo0_mtree_mult1_13_im7_sub_1_q & "00";
    u0_m0_wo0_mtree_mult1_13_im7_shift2_q <= u0_m0_wo0_mtree_mult1_13_im7_shift2_qint(22 downto 0);

    -- u0_m0_wo0_mtree_mult1_13_align_19(BITSHIFT,670)@12
    u0_m0_wo0_mtree_mult1_13_align_19_qint <= u0_m0_wo0_mtree_mult1_13_im7_shift2_q & "00000000000000000";
    u0_m0_wo0_mtree_mult1_13_align_19_q <= u0_m0_wo0_mtree_mult1_13_align_19_qint(39 downto 0);

    -- u0_m0_wo0_mtree_mult1_13_result_add_0_1(ADD,675)@12 + 1
    u0_m0_wo0_mtree_mult1_13_result_add_0_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((46 downto 40 => u0_m0_wo0_mtree_mult1_13_align_19_q(39)) & u0_m0_wo0_mtree_mult1_13_align_19_q));
    u0_m0_wo0_mtree_mult1_13_result_add_0_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((46 downto 46 => u0_m0_wo0_mtree_mult1_13_align_21_q(45)) & u0_m0_wo0_mtree_mult1_13_align_21_q));
    u0_m0_wo0_mtree_mult1_13_result_add_0_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_13_result_add_0_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_13_result_add_0_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_13_result_add_0_1_a) + SIGNED(u0_m0_wo0_mtree_mult1_13_result_add_0_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_13_result_add_0_1_q <= u0_m0_wo0_mtree_mult1_13_result_add_0_1_o(46 downto 0);

    -- u0_m0_wo0_mtree_mult1_13_im3_shift2(BITSHIFT,1444)@10
    u0_m0_wo0_mtree_mult1_13_im3_shift2_qint <= u0_m0_wo0_mtree_mult1_13_bs2_merged_bit_select_b & "0000";
    u0_m0_wo0_mtree_mult1_13_im3_shift2_q <= u0_m0_wo0_mtree_mult1_13_im3_shift2_qint(10 downto 0);

    -- u0_m0_wo0_mtree_mult1_13_im3_sub_3(SUB,1445)@10 + 1
    u0_m0_wo0_mtree_mult1_13_im3_sub_3_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((11 downto 11 => u0_m0_wo0_mtree_mult1_13_im3_shift2_q(10)) & u0_m0_wo0_mtree_mult1_13_im3_shift2_q));
    u0_m0_wo0_mtree_mult1_13_im3_sub_3_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((11 downto 7 => u0_m0_wo0_mtree_mult1_13_bs2_merged_bit_select_b(6)) & u0_m0_wo0_mtree_mult1_13_bs2_merged_bit_select_b));
    u0_m0_wo0_mtree_mult1_13_im3_sub_3_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_13_im3_sub_3_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_13_im3_sub_3_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_13_im3_sub_3_a) - SIGNED(u0_m0_wo0_mtree_mult1_13_im3_sub_3_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_13_im3_sub_3_q <= u0_m0_wo0_mtree_mult1_13_im3_sub_3_o(11 downto 0);

    -- u0_m0_wo0_mtree_mult1_13_im3_shift4(BITSHIFT,1446)@11
    u0_m0_wo0_mtree_mult1_13_im3_shift4_qint <= u0_m0_wo0_mtree_mult1_13_im3_sub_3_q & "0000000";
    u0_m0_wo0_mtree_mult1_13_im3_shift4_q <= u0_m0_wo0_mtree_mult1_13_im3_shift4_qint(18 downto 0);

    -- u0_m0_wo0_mtree_mult1_13_im3_shift0(BITSHIFT,1442)@10
    u0_m0_wo0_mtree_mult1_13_im3_shift0_qint <= u0_m0_wo0_mtree_mult1_13_bs2_merged_bit_select_b & "00000";
    u0_m0_wo0_mtree_mult1_13_im3_shift0_q <= u0_m0_wo0_mtree_mult1_13_im3_shift0_qint(11 downto 0);

    -- u0_m0_wo0_mtree_mult1_13_im3_sub_1(SUB,1443)@10 + 1
    u0_m0_wo0_mtree_mult1_13_im3_sub_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((12 downto 12 => u0_m0_wo0_mtree_mult1_13_im3_shift0_q(11)) & u0_m0_wo0_mtree_mult1_13_im3_shift0_q));
    u0_m0_wo0_mtree_mult1_13_im3_sub_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((12 downto 7 => u0_m0_wo0_mtree_mult1_13_bs2_merged_bit_select_b(6)) & u0_m0_wo0_mtree_mult1_13_bs2_merged_bit_select_b));
    u0_m0_wo0_mtree_mult1_13_im3_sub_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_13_im3_sub_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_13_im3_sub_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_13_im3_sub_1_a) - SIGNED(u0_m0_wo0_mtree_mult1_13_im3_sub_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_13_im3_sub_1_q <= u0_m0_wo0_mtree_mult1_13_im3_sub_1_o(12 downto 0);

    -- u0_m0_wo0_mtree_mult1_13_im3_add_5(ADD,1447)@11 + 1
    u0_m0_wo0_mtree_mult1_13_im3_add_5_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((19 downto 13 => u0_m0_wo0_mtree_mult1_13_im3_sub_1_q(12)) & u0_m0_wo0_mtree_mult1_13_im3_sub_1_q));
    u0_m0_wo0_mtree_mult1_13_im3_add_5_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((19 downto 19 => u0_m0_wo0_mtree_mult1_13_im3_shift4_q(18)) & u0_m0_wo0_mtree_mult1_13_im3_shift4_q));
    u0_m0_wo0_mtree_mult1_13_im3_add_5_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_13_im3_add_5_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_13_im3_add_5_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_13_im3_add_5_a) + SIGNED(u0_m0_wo0_mtree_mult1_13_im3_add_5_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_13_im3_add_5_q <= u0_m0_wo0_mtree_mult1_13_im3_add_5_o(19 downto 0);

    -- u0_m0_wo0_mtree_mult1_13_im3_shift6(BITSHIFT,1448)@12
    u0_m0_wo0_mtree_mult1_13_im3_shift6_qint <= u0_m0_wo0_mtree_mult1_13_im3_add_5_q & "00000";
    u0_m0_wo0_mtree_mult1_13_im3_shift6_q <= u0_m0_wo0_mtree_mult1_13_im3_shift6_qint(24 downto 0);

    -- u0_m0_wo0_mtree_mult1_13_align_17(BITSHIFT,668)@12
    u0_m0_wo0_mtree_mult1_13_align_17_qint <= u0_m0_wo0_mtree_mult1_13_im3_shift6_q & "00000000000000000";
    u0_m0_wo0_mtree_mult1_13_align_17_q <= u0_m0_wo0_mtree_mult1_13_align_17_qint(41 downto 0);

    -- u0_m0_wo0_mtree_mult1_13_im11_shift2(BITSHIFT,1454)@10
    u0_m0_wo0_mtree_mult1_13_im11_shift2_qint <= u0_m0_wo0_mtree_mult1_13_bjB10_q & "0000";
    u0_m0_wo0_mtree_mult1_13_im11_shift2_q <= u0_m0_wo0_mtree_mult1_13_im11_shift2_qint(21 downto 0);

    -- u0_m0_wo0_mtree_mult1_13_im11_sub_3(SUB,1455)@10 + 1
    u0_m0_wo0_mtree_mult1_13_im11_sub_3_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((22 downto 22 => u0_m0_wo0_mtree_mult1_13_im11_shift2_q(21)) & u0_m0_wo0_mtree_mult1_13_im11_shift2_q));
    u0_m0_wo0_mtree_mult1_13_im11_sub_3_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((22 downto 18 => u0_m0_wo0_mtree_mult1_13_bjB10_q(17)) & u0_m0_wo0_mtree_mult1_13_bjB10_q));
    u0_m0_wo0_mtree_mult1_13_im11_sub_3_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_13_im11_sub_3_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_13_im11_sub_3_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_13_im11_sub_3_a) - SIGNED(u0_m0_wo0_mtree_mult1_13_im11_sub_3_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_13_im11_sub_3_q <= u0_m0_wo0_mtree_mult1_13_im11_sub_3_o(22 downto 0);

    -- u0_m0_wo0_mtree_mult1_13_im11_shift4(BITSHIFT,1456)@11
    u0_m0_wo0_mtree_mult1_13_im11_shift4_qint <= u0_m0_wo0_mtree_mult1_13_im11_sub_3_q & "0000000";
    u0_m0_wo0_mtree_mult1_13_im11_shift4_q <= u0_m0_wo0_mtree_mult1_13_im11_shift4_qint(29 downto 0);

    -- u0_m0_wo0_mtree_mult1_13_im11_shift0(BITSHIFT,1452)@10
    u0_m0_wo0_mtree_mult1_13_im11_shift0_qint <= u0_m0_wo0_mtree_mult1_13_bjB10_q & "00000";
    u0_m0_wo0_mtree_mult1_13_im11_shift0_q <= u0_m0_wo0_mtree_mult1_13_im11_shift0_qint(22 downto 0);

    -- u0_m0_wo0_mtree_mult1_13_im11_sub_1(SUB,1453)@10 + 1
    u0_m0_wo0_mtree_mult1_13_im11_sub_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((23 downto 23 => u0_m0_wo0_mtree_mult1_13_im11_shift0_q(22)) & u0_m0_wo0_mtree_mult1_13_im11_shift0_q));
    u0_m0_wo0_mtree_mult1_13_im11_sub_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((23 downto 18 => u0_m0_wo0_mtree_mult1_13_bjB10_q(17)) & u0_m0_wo0_mtree_mult1_13_bjB10_q));
    u0_m0_wo0_mtree_mult1_13_im11_sub_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_13_im11_sub_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_13_im11_sub_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_13_im11_sub_1_a) - SIGNED(u0_m0_wo0_mtree_mult1_13_im11_sub_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_13_im11_sub_1_q <= u0_m0_wo0_mtree_mult1_13_im11_sub_1_o(23 downto 0);

    -- u0_m0_wo0_mtree_mult1_13_im11_add_5(ADD,1457)@11 + 1
    u0_m0_wo0_mtree_mult1_13_im11_add_5_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((30 downto 24 => u0_m0_wo0_mtree_mult1_13_im11_sub_1_q(23)) & u0_m0_wo0_mtree_mult1_13_im11_sub_1_q));
    u0_m0_wo0_mtree_mult1_13_im11_add_5_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((30 downto 30 => u0_m0_wo0_mtree_mult1_13_im11_shift4_q(29)) & u0_m0_wo0_mtree_mult1_13_im11_shift4_q));
    u0_m0_wo0_mtree_mult1_13_im11_add_5_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_13_im11_add_5_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_13_im11_add_5_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_13_im11_add_5_a) + SIGNED(u0_m0_wo0_mtree_mult1_13_im11_add_5_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_13_im11_add_5_q <= u0_m0_wo0_mtree_mult1_13_im11_add_5_o(30 downto 0);

    -- u0_m0_wo0_mtree_mult1_13_im11_shift6(BITSHIFT,1458)@12
    u0_m0_wo0_mtree_mult1_13_im11_shift6_qint <= u0_m0_wo0_mtree_mult1_13_im11_add_5_q & "00000";
    u0_m0_wo0_mtree_mult1_13_im11_shift6_q <= u0_m0_wo0_mtree_mult1_13_im11_shift6_qint(35 downto 0);

    -- u0_m0_wo0_mtree_mult1_13_result_add_0_0(ADD,674)@12 + 1
    u0_m0_wo0_mtree_mult1_13_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((42 downto 36 => u0_m0_wo0_mtree_mult1_13_im11_shift6_q(35)) & u0_m0_wo0_mtree_mult1_13_im11_shift6_q));
    u0_m0_wo0_mtree_mult1_13_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((42 downto 42 => u0_m0_wo0_mtree_mult1_13_align_17_q(41)) & u0_m0_wo0_mtree_mult1_13_align_17_q));
    u0_m0_wo0_mtree_mult1_13_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_13_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_13_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_13_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_13_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_13_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_13_result_add_0_0_o(42 downto 0);

    -- u0_m0_wo0_mtree_mult1_13_result_add_1_0(ADD,676)@13 + 1
    u0_m0_wo0_mtree_mult1_13_result_add_1_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((47 downto 43 => u0_m0_wo0_mtree_mult1_13_result_add_0_0_q(42)) & u0_m0_wo0_mtree_mult1_13_result_add_0_0_q));
    u0_m0_wo0_mtree_mult1_13_result_add_1_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((47 downto 47 => u0_m0_wo0_mtree_mult1_13_result_add_0_1_q(46)) & u0_m0_wo0_mtree_mult1_13_result_add_0_1_q));
    u0_m0_wo0_mtree_mult1_13_result_add_1_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_13_result_add_1_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_13_result_add_1_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_13_result_add_1_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_13_result_add_1_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_13_result_add_1_0_q <= u0_m0_wo0_mtree_mult1_13_result_add_1_0_o(47 downto 0);

    -- u0_m0_wo0_mtree_mult1_12_im0_shift0(BITSHIFT,1459)@11
    u0_m0_wo0_mtree_mult1_12_im0_shift0_qint <= d_u0_m0_wo0_mtree_mult1_12_bs2_merged_bit_select_b_11_q & "000";
    u0_m0_wo0_mtree_mult1_12_im0_shift0_q <= u0_m0_wo0_mtree_mult1_12_im0_shift0_qint(9 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr24(DELAY,43)@10
    u0_m0_wo0_wi0_r0_delayr24 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr23_q, xout => u0_m0_wo0_wi0_r0_delayr24_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_12_bs2_merged_bit_select(BITSELECT,3000)@10
    u0_m0_wo0_mtree_mult1_12_bs2_merged_bit_select_b <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr24_q(23 downto 17));
    u0_m0_wo0_mtree_mult1_12_bs2_merged_bit_select_c <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr24_q(16 downto 0));

    -- d_u0_m0_wo0_mtree_mult1_12_bs2_merged_bit_select_b_11(DELAY,3082)@10 + 1
    d_u0_m0_wo0_mtree_mult1_12_bs2_merged_bit_select_b_11 : dspba_delay
    GENERIC MAP ( width => 7, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_mtree_mult1_12_bs2_merged_bit_select_b, xout => d_u0_m0_wo0_mtree_mult1_12_bs2_merged_bit_select_b_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_12_im0_sub_1(SUB,1460)@11 + 1
    u0_m0_wo0_mtree_mult1_12_im0_sub_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((10 downto 7 => d_u0_m0_wo0_mtree_mult1_12_bs2_merged_bit_select_b_11_q(6)) & d_u0_m0_wo0_mtree_mult1_12_bs2_merged_bit_select_b_11_q));
    u0_m0_wo0_mtree_mult1_12_im0_sub_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((10 downto 10 => u0_m0_wo0_mtree_mult1_12_im0_shift0_q(9)) & u0_m0_wo0_mtree_mult1_12_im0_shift0_q));
    u0_m0_wo0_mtree_mult1_12_im0_sub_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_12_im0_sub_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_12_im0_sub_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_12_im0_sub_1_a) - SIGNED(u0_m0_wo0_mtree_mult1_12_im0_sub_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_12_im0_sub_1_q <= u0_m0_wo0_mtree_mult1_12_im0_sub_1_o(10 downto 0);

    -- u0_m0_wo0_mtree_mult1_12_im0_shift2(BITSHIFT,1461)@12
    u0_m0_wo0_mtree_mult1_12_im0_shift2_qint <= u0_m0_wo0_mtree_mult1_12_im0_sub_1_q & "0";
    u0_m0_wo0_mtree_mult1_12_im0_shift2_q <= u0_m0_wo0_mtree_mult1_12_im0_shift2_qint(11 downto 0);

    -- u0_m0_wo0_mtree_mult1_12_align_21(BITSHIFT,698)@12
    u0_m0_wo0_mtree_mult1_12_align_21_qint <= u0_m0_wo0_mtree_mult1_12_im0_shift2_q & "0000000000000000000000000000000000";
    u0_m0_wo0_mtree_mult1_12_align_21_q <= u0_m0_wo0_mtree_mult1_12_align_21_qint(45 downto 0);

    -- u0_m0_wo0_mtree_mult1_12_im7_shift0(BITSHIFT,1475)@11
    u0_m0_wo0_mtree_mult1_12_im7_shift0_qint <= d_u0_m0_wo0_mtree_mult1_12_bjB10_q_11_q & "000";
    u0_m0_wo0_mtree_mult1_12_im7_shift0_q <= u0_m0_wo0_mtree_mult1_12_im7_shift0_qint(20 downto 0);

    -- u0_m0_wo0_mtree_mult1_12_bjB10(BITJOIN,687)@10
    u0_m0_wo0_mtree_mult1_12_bjB10_q <= GND_q & u0_m0_wo0_mtree_mult1_12_bs2_merged_bit_select_c;

    -- d_u0_m0_wo0_mtree_mult1_12_bjB10_q_11(DELAY,3054)@10 + 1
    d_u0_m0_wo0_mtree_mult1_12_bjB10_q_11 : dspba_delay
    GENERIC MAP ( width => 18, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_mtree_mult1_12_bjB10_q, xout => d_u0_m0_wo0_mtree_mult1_12_bjB10_q_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_12_im7_sub_1(SUB,1476)@11 + 1
    u0_m0_wo0_mtree_mult1_12_im7_sub_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 18 => d_u0_m0_wo0_mtree_mult1_12_bjB10_q_11_q(17)) & d_u0_m0_wo0_mtree_mult1_12_bjB10_q_11_q));
    u0_m0_wo0_mtree_mult1_12_im7_sub_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 21 => u0_m0_wo0_mtree_mult1_12_im7_shift0_q(20)) & u0_m0_wo0_mtree_mult1_12_im7_shift0_q));
    u0_m0_wo0_mtree_mult1_12_im7_sub_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_12_im7_sub_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_12_im7_sub_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_12_im7_sub_1_a) - SIGNED(u0_m0_wo0_mtree_mult1_12_im7_sub_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_12_im7_sub_1_q <= u0_m0_wo0_mtree_mult1_12_im7_sub_1_o(21 downto 0);

    -- u0_m0_wo0_mtree_mult1_12_im7_shift2(BITSHIFT,1477)@12
    u0_m0_wo0_mtree_mult1_12_im7_shift2_qint <= u0_m0_wo0_mtree_mult1_12_im7_sub_1_q & "0";
    u0_m0_wo0_mtree_mult1_12_im7_shift2_q <= u0_m0_wo0_mtree_mult1_12_im7_shift2_qint(22 downto 0);

    -- u0_m0_wo0_mtree_mult1_12_align_19(BITSHIFT,696)@12
    u0_m0_wo0_mtree_mult1_12_align_19_qint <= u0_m0_wo0_mtree_mult1_12_im7_shift2_q & "00000000000000000";
    u0_m0_wo0_mtree_mult1_12_align_19_q <= u0_m0_wo0_mtree_mult1_12_align_19_qint(39 downto 0);

    -- u0_m0_wo0_mtree_mult1_12_result_add_0_1(ADD,701)@12 + 1
    u0_m0_wo0_mtree_mult1_12_result_add_0_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((46 downto 40 => u0_m0_wo0_mtree_mult1_12_align_19_q(39)) & u0_m0_wo0_mtree_mult1_12_align_19_q));
    u0_m0_wo0_mtree_mult1_12_result_add_0_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((46 downto 46 => u0_m0_wo0_mtree_mult1_12_align_21_q(45)) & u0_m0_wo0_mtree_mult1_12_align_21_q));
    u0_m0_wo0_mtree_mult1_12_result_add_0_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_12_result_add_0_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_12_result_add_0_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_12_result_add_0_1_a) + SIGNED(u0_m0_wo0_mtree_mult1_12_result_add_0_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_12_result_add_0_1_q <= u0_m0_wo0_mtree_mult1_12_result_add_0_1_o(46 downto 0);

    -- u0_m0_wo0_mtree_mult1_12_im3(MULT,680)@10 + 2
    u0_m0_wo0_mtree_mult1_12_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_24_bjA5_q_const_q);
    u0_m0_wo0_mtree_mult1_12_im3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_12_bs2_merged_bit_select_b);
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

    -- u0_m0_wo0_mtree_mult1_12_align_17(BITSHIFT,694)@12
    u0_m0_wo0_mtree_mult1_12_align_17_qint <= u0_m0_wo0_mtree_mult1_12_im3_q & "00000000000000000";
    u0_m0_wo0_mtree_mult1_12_align_17_q <= u0_m0_wo0_mtree_mult1_12_align_17_qint(41 downto 0);

    -- u0_m0_wo0_mtree_mult1_12_im11(MULT,688)@10 + 2
    u0_m0_wo0_mtree_mult1_12_im11_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_24_bjA5_q_const_q);
    u0_m0_wo0_mtree_mult1_12_im11_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_12_bjB10_q);
    u0_m0_wo0_mtree_mult1_12_im11_reset <= areset;
    u0_m0_wo0_mtree_mult1_12_im11_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 18,
        lpm_widthp => 36,
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

    -- u0_m0_wo0_mtree_mult1_12_result_add_0_0(ADD,700)@12 + 1
    u0_m0_wo0_mtree_mult1_12_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((42 downto 36 => u0_m0_wo0_mtree_mult1_12_im11_q(35)) & u0_m0_wo0_mtree_mult1_12_im11_q));
    u0_m0_wo0_mtree_mult1_12_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((42 downto 42 => u0_m0_wo0_mtree_mult1_12_align_17_q(41)) & u0_m0_wo0_mtree_mult1_12_align_17_q));
    u0_m0_wo0_mtree_mult1_12_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_12_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_12_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_12_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_12_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_12_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_12_result_add_0_0_o(42 downto 0);

    -- u0_m0_wo0_mtree_mult1_12_result_add_1_0(ADD,702)@13 + 1
    u0_m0_wo0_mtree_mult1_12_result_add_1_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((47 downto 43 => u0_m0_wo0_mtree_mult1_12_result_add_0_0_q(42)) & u0_m0_wo0_mtree_mult1_12_result_add_0_0_q));
    u0_m0_wo0_mtree_mult1_12_result_add_1_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((47 downto 47 => u0_m0_wo0_mtree_mult1_12_result_add_0_1_q(46)) & u0_m0_wo0_mtree_mult1_12_result_add_0_1_q));
    u0_m0_wo0_mtree_mult1_12_result_add_1_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_12_result_add_1_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_12_result_add_1_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_12_result_add_1_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_12_result_add_1_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_12_result_add_1_0_q <= u0_m0_wo0_mtree_mult1_12_result_add_1_0_o(47 downto 0);

    -- u0_m0_wo0_mtree_add0_6(ADD,139)@14 + 1
    u0_m0_wo0_mtree_add0_6_a <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_12_result_add_1_0_q(46 downto 0));
    u0_m0_wo0_mtree_add0_6_b <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_13_result_add_1_0_q(46 downto 0));
    u0_m0_wo0_mtree_add0_6_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_6_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_6_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_6_a) + SIGNED(u0_m0_wo0_mtree_add0_6_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_6_q <= u0_m0_wo0_mtree_add0_6_o(46 downto 0);

    -- u0_m0_wo0_mtree_add1_3(ADD,154)@15 + 1
    u0_m0_wo0_mtree_add1_3_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 47 => u0_m0_wo0_mtree_add0_6_q(46)) & u0_m0_wo0_mtree_add0_6_q));
    u0_m0_wo0_mtree_add1_3_b <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_15_result_add_1_0_q);
    u0_m0_wo0_mtree_add1_3_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_3_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_3_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_3_a) + SIGNED(u0_m0_wo0_mtree_add1_3_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_3_q <= u0_m0_wo0_mtree_add1_3_o(48 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr25(DELAY,44)@10
    u0_m0_wo0_wi0_r0_delayr25 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr24_q, xout => u0_m0_wo0_wi0_r0_delayr25_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_r0_delayr25_q_11(DELAY,3033)@10 + 1
    d_u0_m0_wo0_wi0_r0_delayr25_q_11 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr25_q, xout => d_u0_m0_wo0_wi0_r0_delayr25_q_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_11_bs2_merged_bit_select(BITSELECT,3001)@11
    u0_m0_wo0_mtree_mult1_11_bs2_merged_bit_select_b <= STD_LOGIC_VECTOR(d_u0_m0_wo0_wi0_r0_delayr25_q_11_q(23 downto 17));
    u0_m0_wo0_mtree_mult1_11_bs2_merged_bit_select_c <= STD_LOGIC_VECTOR(d_u0_m0_wo0_wi0_r0_delayr25_q_11_q(16 downto 0));

    -- d_u0_m0_wo0_mtree_mult1_11_bs2_merged_bit_select_b_12(DELAY,3083)@11 + 1
    d_u0_m0_wo0_mtree_mult1_11_bs2_merged_bit_select_b_12 : dspba_delay
    GENERIC MAP ( width => 7, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_mtree_mult1_11_bs2_merged_bit_select_b, xout => d_u0_m0_wo0_mtree_mult1_11_bs2_merged_bit_select_b_12_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_11_im0_shift1(BITSHIFT,1492)@12
    u0_m0_wo0_mtree_mult1_11_im0_shift1_qint <= d_u0_m0_wo0_mtree_mult1_11_bs2_merged_bit_select_b_12_q & "000";
    u0_m0_wo0_mtree_mult1_11_im0_shift1_q <= u0_m0_wo0_mtree_mult1_11_im0_shift1_qint(9 downto 0);

    -- u0_m0_wo0_mtree_mult1_11_im0_sub_0(SUB,1491)@11 + 1
    u0_m0_wo0_mtree_mult1_11_im0_sub_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((7 downto 1 => GND_q(0)) & GND_q));
    u0_m0_wo0_mtree_mult1_11_im0_sub_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((7 downto 7 => u0_m0_wo0_mtree_mult1_11_bs2_merged_bit_select_b(6)) & u0_m0_wo0_mtree_mult1_11_bs2_merged_bit_select_b));
    u0_m0_wo0_mtree_mult1_11_im0_sub_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_11_im0_sub_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_11_im0_sub_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_11_im0_sub_0_a) - SIGNED(u0_m0_wo0_mtree_mult1_11_im0_sub_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_11_im0_sub_0_q <= u0_m0_wo0_mtree_mult1_11_im0_sub_0_o(7 downto 0);

    -- u0_m0_wo0_mtree_mult1_11_im0_sub_2(SUB,1493)@12 + 1
    u0_m0_wo0_mtree_mult1_11_im0_sub_2_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((10 downto 8 => u0_m0_wo0_mtree_mult1_11_im0_sub_0_q(7)) & u0_m0_wo0_mtree_mult1_11_im0_sub_0_q));
    u0_m0_wo0_mtree_mult1_11_im0_sub_2_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((10 downto 10 => u0_m0_wo0_mtree_mult1_11_im0_shift1_q(9)) & u0_m0_wo0_mtree_mult1_11_im0_shift1_q));
    u0_m0_wo0_mtree_mult1_11_im0_sub_2_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_11_im0_sub_2_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_11_im0_sub_2_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_11_im0_sub_2_a) - SIGNED(u0_m0_wo0_mtree_mult1_11_im0_sub_2_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_11_im0_sub_2_q <= u0_m0_wo0_mtree_mult1_11_im0_sub_2_o(10 downto 0);

    -- u0_m0_wo0_mtree_mult1_11_align_21(BITSHIFT,724)@13
    u0_m0_wo0_mtree_mult1_11_align_21_qint <= STD_LOGIC_VECTOR((11 downto 11 => u0_m0_wo0_mtree_mult1_11_im0_sub_2_q(10)) & u0_m0_wo0_mtree_mult1_11_im0_sub_2_q) & "0000000000000000000000000000000000";
    u0_m0_wo0_mtree_mult1_11_align_21_q <= u0_m0_wo0_mtree_mult1_11_align_21_qint(45 downto 0);

    -- u0_m0_wo0_mtree_mult1_11_bjB10(BITJOIN,713)@11
    u0_m0_wo0_mtree_mult1_11_bjB10_q <= GND_q & u0_m0_wo0_mtree_mult1_11_bs2_merged_bit_select_c;

    -- d_u0_m0_wo0_mtree_mult1_11_bjB10_q_12(DELAY,3055)@11 + 1
    d_u0_m0_wo0_mtree_mult1_11_bjB10_q_12 : dspba_delay
    GENERIC MAP ( width => 18, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_mtree_mult1_11_bjB10_q, xout => d_u0_m0_wo0_mtree_mult1_11_bjB10_q_12_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_11_im7_shift1(BITSHIFT,1510)@12
    u0_m0_wo0_mtree_mult1_11_im7_shift1_qint <= d_u0_m0_wo0_mtree_mult1_11_bjB10_q_12_q & "000";
    u0_m0_wo0_mtree_mult1_11_im7_shift1_q <= u0_m0_wo0_mtree_mult1_11_im7_shift1_qint(20 downto 0);

    -- u0_m0_wo0_mtree_mult1_11_im7_sub_0(SUB,1509)@11 + 1
    u0_m0_wo0_mtree_mult1_11_im7_sub_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((18 downto 1 => GND_q(0)) & GND_q));
    u0_m0_wo0_mtree_mult1_11_im7_sub_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((18 downto 18 => u0_m0_wo0_mtree_mult1_11_bjB10_q(17)) & u0_m0_wo0_mtree_mult1_11_bjB10_q));
    u0_m0_wo0_mtree_mult1_11_im7_sub_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_11_im7_sub_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_11_im7_sub_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_11_im7_sub_0_a) - SIGNED(u0_m0_wo0_mtree_mult1_11_im7_sub_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_11_im7_sub_0_q <= u0_m0_wo0_mtree_mult1_11_im7_sub_0_o(18 downto 0);

    -- u0_m0_wo0_mtree_mult1_11_im7_sub_2(SUB,1511)@12 + 1
    u0_m0_wo0_mtree_mult1_11_im7_sub_2_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 19 => u0_m0_wo0_mtree_mult1_11_im7_sub_0_q(18)) & u0_m0_wo0_mtree_mult1_11_im7_sub_0_q));
    u0_m0_wo0_mtree_mult1_11_im7_sub_2_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 21 => u0_m0_wo0_mtree_mult1_11_im7_shift1_q(20)) & u0_m0_wo0_mtree_mult1_11_im7_shift1_q));
    u0_m0_wo0_mtree_mult1_11_im7_sub_2_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_11_im7_sub_2_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_11_im7_sub_2_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_11_im7_sub_2_a) - SIGNED(u0_m0_wo0_mtree_mult1_11_im7_sub_2_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_11_im7_sub_2_q <= u0_m0_wo0_mtree_mult1_11_im7_sub_2_o(21 downto 0);

    -- u0_m0_wo0_mtree_mult1_11_align_19(BITSHIFT,722)@13
    u0_m0_wo0_mtree_mult1_11_align_19_qint <= STD_LOGIC_VECTOR((22 downto 22 => u0_m0_wo0_mtree_mult1_11_im7_sub_2_q(21)) & u0_m0_wo0_mtree_mult1_11_im7_sub_2_q) & "00000000000000000";
    u0_m0_wo0_mtree_mult1_11_align_19_q <= u0_m0_wo0_mtree_mult1_11_align_19_qint(39 downto 0);

    -- u0_m0_wo0_mtree_mult1_11_result_add_0_1(ADD,727)@13 + 1
    u0_m0_wo0_mtree_mult1_11_result_add_0_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((46 downto 40 => u0_m0_wo0_mtree_mult1_11_align_19_q(39)) & u0_m0_wo0_mtree_mult1_11_align_19_q));
    u0_m0_wo0_mtree_mult1_11_result_add_0_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((46 downto 46 => u0_m0_wo0_mtree_mult1_11_align_21_q(45)) & u0_m0_wo0_mtree_mult1_11_align_21_q));
    u0_m0_wo0_mtree_mult1_11_result_add_0_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_11_result_add_0_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_11_result_add_0_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_11_result_add_0_1_a) + SIGNED(u0_m0_wo0_mtree_mult1_11_result_add_0_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_11_result_add_0_1_q <= u0_m0_wo0_mtree_mult1_11_result_add_0_1_o(46 downto 0);

    -- u0_m0_wo0_mtree_mult1_11_im3(MULT,706)@11 + 2
    u0_m0_wo0_mtree_mult1_11_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_25_bjA5_q_const_q);
    u0_m0_wo0_mtree_mult1_11_im3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_11_bs2_merged_bit_select_b);
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

    -- u0_m0_wo0_mtree_mult1_11_align_17(BITSHIFT,720)@13
    u0_m0_wo0_mtree_mult1_11_align_17_qint <= u0_m0_wo0_mtree_mult1_11_im3_q & "00000000000000000";
    u0_m0_wo0_mtree_mult1_11_align_17_q <= u0_m0_wo0_mtree_mult1_11_align_17_qint(41 downto 0);

    -- u0_m0_wo0_mtree_mult1_11_im11(MULT,714)@11 + 2
    u0_m0_wo0_mtree_mult1_11_im11_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_25_bjA5_q_const_q);
    u0_m0_wo0_mtree_mult1_11_im11_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_11_bjB10_q);
    u0_m0_wo0_mtree_mult1_11_im11_reset <= areset;
    u0_m0_wo0_mtree_mult1_11_im11_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 18,
        lpm_widthp => 36,
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

    -- u0_m0_wo0_mtree_mult1_11_result_add_0_0(ADD,726)@13 + 1
    u0_m0_wo0_mtree_mult1_11_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((42 downto 36 => u0_m0_wo0_mtree_mult1_11_im11_q(35)) & u0_m0_wo0_mtree_mult1_11_im11_q));
    u0_m0_wo0_mtree_mult1_11_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((42 downto 42 => u0_m0_wo0_mtree_mult1_11_align_17_q(41)) & u0_m0_wo0_mtree_mult1_11_align_17_q));
    u0_m0_wo0_mtree_mult1_11_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_11_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_11_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_11_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_11_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_11_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_11_result_add_0_0_o(42 downto 0);

    -- u0_m0_wo0_mtree_mult1_11_result_add_1_0(ADD,728)@14 + 1
    u0_m0_wo0_mtree_mult1_11_result_add_1_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((47 downto 43 => u0_m0_wo0_mtree_mult1_11_result_add_0_0_q(42)) & u0_m0_wo0_mtree_mult1_11_result_add_0_0_q));
    u0_m0_wo0_mtree_mult1_11_result_add_1_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((47 downto 47 => u0_m0_wo0_mtree_mult1_11_result_add_0_1_q(46)) & u0_m0_wo0_mtree_mult1_11_result_add_0_1_q));
    u0_m0_wo0_mtree_mult1_11_result_add_1_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_11_result_add_1_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_11_result_add_1_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_11_result_add_1_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_11_result_add_1_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_11_result_add_1_0_q <= u0_m0_wo0_mtree_mult1_11_result_add_1_0_o(47 downto 0);

    -- u0_m0_wo0_mtree_mult1_9_im0_shift0(BITSHIFT,1527)@11
    u0_m0_wo0_mtree_mult1_9_im0_shift0_qint <= d_u0_m0_wo0_mtree_mult1_9_bs2_merged_bit_select_b_11_q & "0";
    u0_m0_wo0_mtree_mult1_9_im0_shift0_q <= u0_m0_wo0_mtree_mult1_9_im0_shift0_qint(7 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr26(DELAY,45)@10
    u0_m0_wo0_wi0_r0_delayr26 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr25_q, xout => u0_m0_wo0_wi0_r0_delayr26_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_wi0_r0_delayr27(DELAY,46)@10
    u0_m0_wo0_wi0_r0_delayr27 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr26_q, xout => u0_m0_wo0_wi0_r0_delayr27_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_9_bs2_merged_bit_select(BITSELECT,3002)@10
    u0_m0_wo0_mtree_mult1_9_bs2_merged_bit_select_b <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr27_q(23 downto 17));
    u0_m0_wo0_mtree_mult1_9_bs2_merged_bit_select_c <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr27_q(16 downto 0));

    -- d_u0_m0_wo0_mtree_mult1_9_bs2_merged_bit_select_b_11(DELAY,3084)@10 + 1
    d_u0_m0_wo0_mtree_mult1_9_bs2_merged_bit_select_b_11 : dspba_delay
    GENERIC MAP ( width => 7, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_mtree_mult1_9_bs2_merged_bit_select_b, xout => d_u0_m0_wo0_mtree_mult1_9_bs2_merged_bit_select_b_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_9_im0_add_1(ADD,1528)@11 + 1
    u0_m0_wo0_mtree_mult1_9_im0_add_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((8 downto 7 => d_u0_m0_wo0_mtree_mult1_9_bs2_merged_bit_select_b_11_q(6)) & d_u0_m0_wo0_mtree_mult1_9_bs2_merged_bit_select_b_11_q));
    u0_m0_wo0_mtree_mult1_9_im0_add_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((8 downto 8 => u0_m0_wo0_mtree_mult1_9_im0_shift0_q(7)) & u0_m0_wo0_mtree_mult1_9_im0_shift0_q));
    u0_m0_wo0_mtree_mult1_9_im0_add_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_9_im0_add_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_9_im0_add_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_9_im0_add_1_a) + SIGNED(u0_m0_wo0_mtree_mult1_9_im0_add_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_9_im0_add_1_q <= u0_m0_wo0_mtree_mult1_9_im0_add_1_o(8 downto 0);

    -- u0_m0_wo0_mtree_mult1_9_im0_shift2(BITSHIFT,1529)@12
    u0_m0_wo0_mtree_mult1_9_im0_shift2_qint <= u0_m0_wo0_mtree_mult1_9_im0_add_1_q & "0";
    u0_m0_wo0_mtree_mult1_9_im0_shift2_q <= u0_m0_wo0_mtree_mult1_9_im0_shift2_qint(9 downto 0);

    -- u0_m0_wo0_mtree_mult1_9_align_21(BITSHIFT,750)@12
    u0_m0_wo0_mtree_mult1_9_align_21_qint <= STD_LOGIC_VECTOR((10 downto 10 => u0_m0_wo0_mtree_mult1_9_im0_shift2_q(9)) & u0_m0_wo0_mtree_mult1_9_im0_shift2_q) & "0000000000000000000000000000000000";
    u0_m0_wo0_mtree_mult1_9_align_21_q <= u0_m0_wo0_mtree_mult1_9_align_21_qint(44 downto 0);

    -- u0_m0_wo0_mtree_mult1_9_im7_shift0(BITSHIFT,1540)@11
    u0_m0_wo0_mtree_mult1_9_im7_shift0_qint <= d_u0_m0_wo0_mtree_mult1_9_bjB10_q_11_q & "0";
    u0_m0_wo0_mtree_mult1_9_im7_shift0_q <= u0_m0_wo0_mtree_mult1_9_im7_shift0_qint(18 downto 0);

    -- u0_m0_wo0_mtree_mult1_9_bjB10(BITJOIN,739)@10
    u0_m0_wo0_mtree_mult1_9_bjB10_q <= GND_q & u0_m0_wo0_mtree_mult1_9_bs2_merged_bit_select_c;

    -- d_u0_m0_wo0_mtree_mult1_9_bjB10_q_11(DELAY,3056)@10 + 1
    d_u0_m0_wo0_mtree_mult1_9_bjB10_q_11 : dspba_delay
    GENERIC MAP ( width => 18, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_mtree_mult1_9_bjB10_q, xout => d_u0_m0_wo0_mtree_mult1_9_bjB10_q_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_9_im7_add_1(ADD,1541)@11 + 1
    u0_m0_wo0_mtree_mult1_9_im7_add_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((19 downto 18 => d_u0_m0_wo0_mtree_mult1_9_bjB10_q_11_q(17)) & d_u0_m0_wo0_mtree_mult1_9_bjB10_q_11_q));
    u0_m0_wo0_mtree_mult1_9_im7_add_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((19 downto 19 => u0_m0_wo0_mtree_mult1_9_im7_shift0_q(18)) & u0_m0_wo0_mtree_mult1_9_im7_shift0_q));
    u0_m0_wo0_mtree_mult1_9_im7_add_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_9_im7_add_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_9_im7_add_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_9_im7_add_1_a) + SIGNED(u0_m0_wo0_mtree_mult1_9_im7_add_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_9_im7_add_1_q <= u0_m0_wo0_mtree_mult1_9_im7_add_1_o(19 downto 0);

    -- u0_m0_wo0_mtree_mult1_9_im7_shift2(BITSHIFT,1542)@12
    u0_m0_wo0_mtree_mult1_9_im7_shift2_qint <= u0_m0_wo0_mtree_mult1_9_im7_add_1_q & "0";
    u0_m0_wo0_mtree_mult1_9_im7_shift2_q <= u0_m0_wo0_mtree_mult1_9_im7_shift2_qint(20 downto 0);

    -- u0_m0_wo0_mtree_mult1_9_align_19(BITSHIFT,748)@12
    u0_m0_wo0_mtree_mult1_9_align_19_qint <= STD_LOGIC_VECTOR((21 downto 21 => u0_m0_wo0_mtree_mult1_9_im7_shift2_q(20)) & u0_m0_wo0_mtree_mult1_9_im7_shift2_q) & "00000000000000000";
    u0_m0_wo0_mtree_mult1_9_align_19_q <= u0_m0_wo0_mtree_mult1_9_align_19_qint(38 downto 0);

    -- u0_m0_wo0_mtree_mult1_9_result_add_0_1(ADD,753)@12 + 1
    u0_m0_wo0_mtree_mult1_9_result_add_0_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((45 downto 39 => u0_m0_wo0_mtree_mult1_9_align_19_q(38)) & u0_m0_wo0_mtree_mult1_9_align_19_q));
    u0_m0_wo0_mtree_mult1_9_result_add_0_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((45 downto 45 => u0_m0_wo0_mtree_mult1_9_align_21_q(44)) & u0_m0_wo0_mtree_mult1_9_align_21_q));
    u0_m0_wo0_mtree_mult1_9_result_add_0_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_9_result_add_0_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_9_result_add_0_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_9_result_add_0_1_a) + SIGNED(u0_m0_wo0_mtree_mult1_9_result_add_0_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_9_result_add_0_1_q <= u0_m0_wo0_mtree_mult1_9_result_add_0_1_o(45 downto 0);

    -- u0_m0_wo0_mtree_mult1_9_im3(MULT,732)@10 + 2
    u0_m0_wo0_mtree_mult1_9_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_27_bjA5_q_const_q);
    u0_m0_wo0_mtree_mult1_9_im3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_9_bs2_merged_bit_select_b);
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

    -- u0_m0_wo0_mtree_mult1_9_align_17(BITSHIFT,746)@12
    u0_m0_wo0_mtree_mult1_9_align_17_qint <= u0_m0_wo0_mtree_mult1_9_im3_q & "00000000000000000";
    u0_m0_wo0_mtree_mult1_9_align_17_q <= u0_m0_wo0_mtree_mult1_9_align_17_qint(41 downto 0);

    -- u0_m0_wo0_mtree_mult1_9_im11(MULT,740)@10 + 2
    u0_m0_wo0_mtree_mult1_9_im11_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_27_bjA5_q_const_q);
    u0_m0_wo0_mtree_mult1_9_im11_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_9_bjB10_q);
    u0_m0_wo0_mtree_mult1_9_im11_reset <= areset;
    u0_m0_wo0_mtree_mult1_9_im11_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 18,
        lpm_widthp => 36,
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

    -- u0_m0_wo0_mtree_mult1_9_result_add_0_0(ADD,752)@12 + 1
    u0_m0_wo0_mtree_mult1_9_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((42 downto 36 => u0_m0_wo0_mtree_mult1_9_im11_q(35)) & u0_m0_wo0_mtree_mult1_9_im11_q));
    u0_m0_wo0_mtree_mult1_9_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((42 downto 42 => u0_m0_wo0_mtree_mult1_9_align_17_q(41)) & u0_m0_wo0_mtree_mult1_9_align_17_q));
    u0_m0_wo0_mtree_mult1_9_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_9_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_9_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_9_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_9_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_9_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_9_result_add_0_0_o(42 downto 0);

    -- u0_m0_wo0_mtree_mult1_9_result_add_1_0(ADD,754)@13 + 1
    u0_m0_wo0_mtree_mult1_9_result_add_1_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((46 downto 43 => u0_m0_wo0_mtree_mult1_9_result_add_0_0_q(42)) & u0_m0_wo0_mtree_mult1_9_result_add_0_0_q));
    u0_m0_wo0_mtree_mult1_9_result_add_1_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((46 downto 46 => u0_m0_wo0_mtree_mult1_9_result_add_0_1_q(45)) & u0_m0_wo0_mtree_mult1_9_result_add_0_1_q));
    u0_m0_wo0_mtree_mult1_9_result_add_1_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_9_result_add_1_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_9_result_add_1_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_9_result_add_1_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_9_result_add_1_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_9_result_add_1_0_q <= u0_m0_wo0_mtree_mult1_9_result_add_1_0_o(46 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr28(DELAY,47)@10
    u0_m0_wo0_wi0_r0_delayr28 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr27_q, xout => u0_m0_wo0_wi0_r0_delayr28_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_8_bs2_merged_bit_select(BITSELECT,3003)@10
    u0_m0_wo0_mtree_mult1_8_bs2_merged_bit_select_b <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr28_q(23 downto 17));
    u0_m0_wo0_mtree_mult1_8_bs2_merged_bit_select_c <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr28_q(16 downto 0));

    -- d_u0_m0_wo0_mtree_mult1_8_bs2_merged_bit_select_b_12(DELAY,3085)@10 + 2
    d_u0_m0_wo0_mtree_mult1_8_bs2_merged_bit_select_b_12 : dspba_delay
    GENERIC MAP ( width => 7, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_mtree_mult1_8_bs2_merged_bit_select_b, xout => d_u0_m0_wo0_mtree_mult1_8_bs2_merged_bit_select_b_12_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_8_im0_shift0(BITSHIFT,1553)@12
    u0_m0_wo0_mtree_mult1_8_im0_shift0_qint <= d_u0_m0_wo0_mtree_mult1_8_bs2_merged_bit_select_b_12_q & "000";
    u0_m0_wo0_mtree_mult1_8_im0_shift0_q <= u0_m0_wo0_mtree_mult1_8_im0_shift0_qint(9 downto 0);

    -- u0_m0_wo0_mtree_mult1_8_align_21(BITSHIFT,776)@12
    u0_m0_wo0_mtree_mult1_8_align_21_qint <= STD_LOGIC_VECTOR((11 downto 10 => u0_m0_wo0_mtree_mult1_8_im0_shift0_q(9)) & u0_m0_wo0_mtree_mult1_8_im0_shift0_q) & "0000000000000000000000000000000000";
    u0_m0_wo0_mtree_mult1_8_align_21_q <= u0_m0_wo0_mtree_mult1_8_align_21_qint(45 downto 0);

    -- u0_m0_wo0_mtree_mult1_8_bjB10(BITJOIN,765)@10
    u0_m0_wo0_mtree_mult1_8_bjB10_q <= GND_q & u0_m0_wo0_mtree_mult1_8_bs2_merged_bit_select_c;

    -- d_u0_m0_wo0_mtree_mult1_8_bjB10_q_12(DELAY,3057)@10 + 2
    d_u0_m0_wo0_mtree_mult1_8_bjB10_q_12 : dspba_delay
    GENERIC MAP ( width => 18, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_mtree_mult1_8_bjB10_q, xout => d_u0_m0_wo0_mtree_mult1_8_bjB10_q_12_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_8_im7_shift0(BITSHIFT,1562)@12
    u0_m0_wo0_mtree_mult1_8_im7_shift0_qint <= d_u0_m0_wo0_mtree_mult1_8_bjB10_q_12_q & "000";
    u0_m0_wo0_mtree_mult1_8_im7_shift0_q <= u0_m0_wo0_mtree_mult1_8_im7_shift0_qint(20 downto 0);

    -- u0_m0_wo0_mtree_mult1_8_align_19(BITSHIFT,774)@12
    u0_m0_wo0_mtree_mult1_8_align_19_qint <= STD_LOGIC_VECTOR((22 downto 21 => u0_m0_wo0_mtree_mult1_8_im7_shift0_q(20)) & u0_m0_wo0_mtree_mult1_8_im7_shift0_q) & "00000000000000000";
    u0_m0_wo0_mtree_mult1_8_align_19_q <= u0_m0_wo0_mtree_mult1_8_align_19_qint(39 downto 0);

    -- u0_m0_wo0_mtree_mult1_8_result_add_0_1(ADD,779)@12 + 1
    u0_m0_wo0_mtree_mult1_8_result_add_0_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((46 downto 40 => u0_m0_wo0_mtree_mult1_8_align_19_q(39)) & u0_m0_wo0_mtree_mult1_8_align_19_q));
    u0_m0_wo0_mtree_mult1_8_result_add_0_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((46 downto 46 => u0_m0_wo0_mtree_mult1_8_align_21_q(45)) & u0_m0_wo0_mtree_mult1_8_align_21_q));
    u0_m0_wo0_mtree_mult1_8_result_add_0_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_8_result_add_0_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_8_result_add_0_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_8_result_add_0_1_a) + SIGNED(u0_m0_wo0_mtree_mult1_8_result_add_0_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_8_result_add_0_1_q <= u0_m0_wo0_mtree_mult1_8_result_add_0_1_o(46 downto 0);

    -- u0_m0_wo0_mtree_mult1_8_im3(MULT,758)@10 + 2
    u0_m0_wo0_mtree_mult1_8_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_28_bjA5_q_const_q);
    u0_m0_wo0_mtree_mult1_8_im3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_8_bs2_merged_bit_select_b);
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

    -- u0_m0_wo0_mtree_mult1_8_align_17(BITSHIFT,772)@12
    u0_m0_wo0_mtree_mult1_8_align_17_qint <= u0_m0_wo0_mtree_mult1_8_im3_q & "00000000000000000";
    u0_m0_wo0_mtree_mult1_8_align_17_q <= u0_m0_wo0_mtree_mult1_8_align_17_qint(41 downto 0);

    -- u0_m0_wo0_mtree_mult1_8_im11(MULT,766)@10 + 2
    u0_m0_wo0_mtree_mult1_8_im11_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_28_bjA5_q_const_q);
    u0_m0_wo0_mtree_mult1_8_im11_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_8_bjB10_q);
    u0_m0_wo0_mtree_mult1_8_im11_reset <= areset;
    u0_m0_wo0_mtree_mult1_8_im11_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 18,
        lpm_widthp => 36,
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

    -- u0_m0_wo0_mtree_mult1_8_result_add_0_0(ADD,778)@12 + 1
    u0_m0_wo0_mtree_mult1_8_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((42 downto 36 => u0_m0_wo0_mtree_mult1_8_im11_q(35)) & u0_m0_wo0_mtree_mult1_8_im11_q));
    u0_m0_wo0_mtree_mult1_8_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((42 downto 42 => u0_m0_wo0_mtree_mult1_8_align_17_q(41)) & u0_m0_wo0_mtree_mult1_8_align_17_q));
    u0_m0_wo0_mtree_mult1_8_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_8_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_8_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_8_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_8_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_8_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_8_result_add_0_0_o(42 downto 0);

    -- u0_m0_wo0_mtree_mult1_8_result_add_1_0(ADD,780)@13 + 1
    u0_m0_wo0_mtree_mult1_8_result_add_1_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((47 downto 43 => u0_m0_wo0_mtree_mult1_8_result_add_0_0_q(42)) & u0_m0_wo0_mtree_mult1_8_result_add_0_0_q));
    u0_m0_wo0_mtree_mult1_8_result_add_1_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((47 downto 47 => u0_m0_wo0_mtree_mult1_8_result_add_0_1_q(46)) & u0_m0_wo0_mtree_mult1_8_result_add_0_1_q));
    u0_m0_wo0_mtree_mult1_8_result_add_1_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_8_result_add_1_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_8_result_add_1_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_8_result_add_1_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_8_result_add_1_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_8_result_add_1_0_q <= u0_m0_wo0_mtree_mult1_8_result_add_1_0_o(47 downto 0);

    -- u0_m0_wo0_mtree_add0_4(ADD,137)@14 + 1
    u0_m0_wo0_mtree_add0_4_a <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_8_result_add_1_0_q(46 downto 0));
    u0_m0_wo0_mtree_add0_4_b <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_9_result_add_1_0_q);
    u0_m0_wo0_mtree_add0_4_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_4_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_4_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_4_a) + SIGNED(u0_m0_wo0_mtree_add0_4_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_4_q <= u0_m0_wo0_mtree_add0_4_o(46 downto 0);

    -- u0_m0_wo0_mtree_add1_2(ADD,153)@15 + 1
    u0_m0_wo0_mtree_add1_2_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((47 downto 47 => u0_m0_wo0_mtree_add0_4_q(46)) & u0_m0_wo0_mtree_add0_4_q));
    u0_m0_wo0_mtree_add1_2_b <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_11_result_add_1_0_q);
    u0_m0_wo0_mtree_add1_2_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_2_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_2_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_2_a) + SIGNED(u0_m0_wo0_mtree_add1_2_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_2_q <= u0_m0_wo0_mtree_add1_2_o(47 downto 0);

    -- u0_m0_wo0_mtree_add2_1(ADD,161)@16 + 1
    u0_m0_wo0_mtree_add2_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((49 downto 48 => u0_m0_wo0_mtree_add1_2_q(47)) & u0_m0_wo0_mtree_add1_2_q));
    u0_m0_wo0_mtree_add2_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((49 downto 49 => u0_m0_wo0_mtree_add1_3_q(48)) & u0_m0_wo0_mtree_add1_3_q));
    u0_m0_wo0_mtree_add2_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add2_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add2_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add2_1_a) + SIGNED(u0_m0_wo0_mtree_add2_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add2_1_q <= u0_m0_wo0_mtree_add2_1_o(49 downto 0);

    -- u0_m0_wo0_mtree_mult1_7_im0_shift0(BITSHIFT,1571)@12
    u0_m0_wo0_mtree_mult1_7_im0_shift0_qint <= d_u0_m0_wo0_mtree_mult1_7_bs2_merged_bit_select_b_12_q & "00";
    u0_m0_wo0_mtree_mult1_7_im0_shift0_q <= u0_m0_wo0_mtree_mult1_7_im0_shift0_qint(8 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr29(DELAY,48)@10
    u0_m0_wo0_wi0_r0_delayr29 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr28_q, xout => u0_m0_wo0_wi0_r0_delayr29_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_r0_delayr29_q_11(DELAY,3034)@10 + 1
    d_u0_m0_wo0_wi0_r0_delayr29_q_11 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr29_q, xout => d_u0_m0_wo0_wi0_r0_delayr29_q_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_7_bs2_merged_bit_select(BITSELECT,3004)@11
    u0_m0_wo0_mtree_mult1_7_bs2_merged_bit_select_b <= STD_LOGIC_VECTOR(d_u0_m0_wo0_wi0_r0_delayr29_q_11_q(23 downto 17));
    u0_m0_wo0_mtree_mult1_7_bs2_merged_bit_select_c <= STD_LOGIC_VECTOR(d_u0_m0_wo0_wi0_r0_delayr29_q_11_q(16 downto 0));

    -- d_u0_m0_wo0_mtree_mult1_7_bs2_merged_bit_select_b_12(DELAY,3086)@11 + 1
    d_u0_m0_wo0_mtree_mult1_7_bs2_merged_bit_select_b_12 : dspba_delay
    GENERIC MAP ( width => 7, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_mtree_mult1_7_bs2_merged_bit_select_b, xout => d_u0_m0_wo0_mtree_mult1_7_bs2_merged_bit_select_b_12_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_7_im0_add_1(ADD,1572)@12 + 1
    u0_m0_wo0_mtree_mult1_7_im0_add_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((9 downto 7 => d_u0_m0_wo0_mtree_mult1_7_bs2_merged_bit_select_b_12_q(6)) & d_u0_m0_wo0_mtree_mult1_7_bs2_merged_bit_select_b_12_q));
    u0_m0_wo0_mtree_mult1_7_im0_add_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((9 downto 9 => u0_m0_wo0_mtree_mult1_7_im0_shift0_q(8)) & u0_m0_wo0_mtree_mult1_7_im0_shift0_q));
    u0_m0_wo0_mtree_mult1_7_im0_add_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_7_im0_add_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_7_im0_add_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_7_im0_add_1_a) + SIGNED(u0_m0_wo0_mtree_mult1_7_im0_add_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_7_im0_add_1_q <= u0_m0_wo0_mtree_mult1_7_im0_add_1_o(9 downto 0);

    -- u0_m0_wo0_mtree_mult1_7_align_21(BITSHIFT,802)@13
    u0_m0_wo0_mtree_mult1_7_align_21_qint <= STD_LOGIC_VECTOR((10 downto 10 => u0_m0_wo0_mtree_mult1_7_im0_add_1_q(9)) & u0_m0_wo0_mtree_mult1_7_im0_add_1_q) & "0000000000000000000000000000000000";
    u0_m0_wo0_mtree_mult1_7_align_21_q <= u0_m0_wo0_mtree_mult1_7_align_21_qint(44 downto 0);

    -- u0_m0_wo0_mtree_mult1_7_im7_shift0(BITSHIFT,1584)@12
    u0_m0_wo0_mtree_mult1_7_im7_shift0_qint <= d_u0_m0_wo0_mtree_mult1_7_bjB10_q_12_q & "00";
    u0_m0_wo0_mtree_mult1_7_im7_shift0_q <= u0_m0_wo0_mtree_mult1_7_im7_shift0_qint(19 downto 0);

    -- u0_m0_wo0_mtree_mult1_7_bjB10(BITJOIN,791)@11
    u0_m0_wo0_mtree_mult1_7_bjB10_q <= GND_q & u0_m0_wo0_mtree_mult1_7_bs2_merged_bit_select_c;

    -- d_u0_m0_wo0_mtree_mult1_7_bjB10_q_12(DELAY,3058)@11 + 1
    d_u0_m0_wo0_mtree_mult1_7_bjB10_q_12 : dspba_delay
    GENERIC MAP ( width => 18, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_mtree_mult1_7_bjB10_q, xout => d_u0_m0_wo0_mtree_mult1_7_bjB10_q_12_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_7_im7_add_1(ADD,1585)@12 + 1
    u0_m0_wo0_mtree_mult1_7_im7_add_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((20 downto 18 => d_u0_m0_wo0_mtree_mult1_7_bjB10_q_12_q(17)) & d_u0_m0_wo0_mtree_mult1_7_bjB10_q_12_q));
    u0_m0_wo0_mtree_mult1_7_im7_add_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((20 downto 20 => u0_m0_wo0_mtree_mult1_7_im7_shift0_q(19)) & u0_m0_wo0_mtree_mult1_7_im7_shift0_q));
    u0_m0_wo0_mtree_mult1_7_im7_add_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_7_im7_add_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_7_im7_add_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_7_im7_add_1_a) + SIGNED(u0_m0_wo0_mtree_mult1_7_im7_add_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_7_im7_add_1_q <= u0_m0_wo0_mtree_mult1_7_im7_add_1_o(20 downto 0);

    -- u0_m0_wo0_mtree_mult1_7_align_19(BITSHIFT,800)@13
    u0_m0_wo0_mtree_mult1_7_align_19_qint <= STD_LOGIC_VECTOR((21 downto 21 => u0_m0_wo0_mtree_mult1_7_im7_add_1_q(20)) & u0_m0_wo0_mtree_mult1_7_im7_add_1_q) & "00000000000000000";
    u0_m0_wo0_mtree_mult1_7_align_19_q <= u0_m0_wo0_mtree_mult1_7_align_19_qint(38 downto 0);

    -- u0_m0_wo0_mtree_mult1_7_result_add_0_1(ADD,805)@13 + 1
    u0_m0_wo0_mtree_mult1_7_result_add_0_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((45 downto 39 => u0_m0_wo0_mtree_mult1_7_align_19_q(38)) & u0_m0_wo0_mtree_mult1_7_align_19_q));
    u0_m0_wo0_mtree_mult1_7_result_add_0_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((45 downto 45 => u0_m0_wo0_mtree_mult1_7_align_21_q(44)) & u0_m0_wo0_mtree_mult1_7_align_21_q));
    u0_m0_wo0_mtree_mult1_7_result_add_0_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_7_result_add_0_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_7_result_add_0_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_7_result_add_0_1_a) + SIGNED(u0_m0_wo0_mtree_mult1_7_result_add_0_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_7_result_add_0_1_q <= u0_m0_wo0_mtree_mult1_7_result_add_0_1_o(45 downto 0);

    -- u0_m0_wo0_mtree_mult1_7_im3(MULT,784)@11 + 2
    u0_m0_wo0_mtree_mult1_7_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_29_bjA5_q_const_q);
    u0_m0_wo0_mtree_mult1_7_im3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_7_bs2_merged_bit_select_b);
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

    -- u0_m0_wo0_mtree_mult1_7_align_17(BITSHIFT,798)@13
    u0_m0_wo0_mtree_mult1_7_align_17_qint <= u0_m0_wo0_mtree_mult1_7_im3_q & "00000000000000000";
    u0_m0_wo0_mtree_mult1_7_align_17_q <= u0_m0_wo0_mtree_mult1_7_align_17_qint(41 downto 0);

    -- u0_m0_wo0_mtree_mult1_7_im11(MULT,792)@11 + 2
    u0_m0_wo0_mtree_mult1_7_im11_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_29_bjA5_q_const_q);
    u0_m0_wo0_mtree_mult1_7_im11_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_7_bjB10_q);
    u0_m0_wo0_mtree_mult1_7_im11_reset <= areset;
    u0_m0_wo0_mtree_mult1_7_im11_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 18,
        lpm_widthp => 36,
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

    -- u0_m0_wo0_mtree_mult1_7_result_add_0_0(ADD,804)@13 + 1
    u0_m0_wo0_mtree_mult1_7_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((42 downto 36 => u0_m0_wo0_mtree_mult1_7_im11_q(35)) & u0_m0_wo0_mtree_mult1_7_im11_q));
    u0_m0_wo0_mtree_mult1_7_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((42 downto 42 => u0_m0_wo0_mtree_mult1_7_align_17_q(41)) & u0_m0_wo0_mtree_mult1_7_align_17_q));
    u0_m0_wo0_mtree_mult1_7_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_7_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_7_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_7_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_7_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_7_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_7_result_add_0_0_o(42 downto 0);

    -- u0_m0_wo0_mtree_mult1_7_result_add_1_0(ADD,806)@14 + 1
    u0_m0_wo0_mtree_mult1_7_result_add_1_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((46 downto 43 => u0_m0_wo0_mtree_mult1_7_result_add_0_0_q(42)) & u0_m0_wo0_mtree_mult1_7_result_add_0_0_q));
    u0_m0_wo0_mtree_mult1_7_result_add_1_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((46 downto 46 => u0_m0_wo0_mtree_mult1_7_result_add_0_1_q(45)) & u0_m0_wo0_mtree_mult1_7_result_add_0_1_q));
    u0_m0_wo0_mtree_mult1_7_result_add_1_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_7_result_add_1_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_7_result_add_1_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_7_result_add_1_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_7_result_add_1_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_7_result_add_1_0_q <= u0_m0_wo0_mtree_mult1_7_result_add_1_0_o(46 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr30(DELAY,49)@10
    u0_m0_wo0_wi0_r0_delayr30 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr29_q, xout => u0_m0_wo0_wi0_r0_delayr30_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_wi0_r0_delayr31(DELAY,50)@10
    u0_m0_wo0_wi0_r0_delayr31 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr30_q, xout => u0_m0_wo0_wi0_r0_delayr31_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_5_bs2_merged_bit_select(BITSELECT,3005)@10
    u0_m0_wo0_mtree_mult1_5_bs2_merged_bit_select_b <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr31_q(23 downto 17));
    u0_m0_wo0_mtree_mult1_5_bs2_merged_bit_select_c <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr31_q(16 downto 0));

    -- d_u0_m0_wo0_mtree_mult1_5_bs2_merged_bit_select_b_11(DELAY,3087)@10 + 1
    d_u0_m0_wo0_mtree_mult1_5_bs2_merged_bit_select_b_11 : dspba_delay
    GENERIC MAP ( width => 7, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_mtree_mult1_5_bs2_merged_bit_select_b, xout => d_u0_m0_wo0_mtree_mult1_5_bs2_merged_bit_select_b_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_5_im0_shift1(BITSHIFT,1598)@11
    u0_m0_wo0_mtree_mult1_5_im0_shift1_qint <= d_u0_m0_wo0_mtree_mult1_5_bs2_merged_bit_select_b_11_q & "00";
    u0_m0_wo0_mtree_mult1_5_im0_shift1_q <= u0_m0_wo0_mtree_mult1_5_im0_shift1_qint(8 downto 0);

    -- u0_m0_wo0_mtree_mult1_5_im0_sub_0(SUB,1597)@10 + 1
    u0_m0_wo0_mtree_mult1_5_im0_sub_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((7 downto 1 => GND_q(0)) & GND_q));
    u0_m0_wo0_mtree_mult1_5_im0_sub_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((7 downto 7 => u0_m0_wo0_mtree_mult1_5_bs2_merged_bit_select_b(6)) & u0_m0_wo0_mtree_mult1_5_bs2_merged_bit_select_b));
    u0_m0_wo0_mtree_mult1_5_im0_sub_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_5_im0_sub_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_5_im0_sub_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_5_im0_sub_0_a) - SIGNED(u0_m0_wo0_mtree_mult1_5_im0_sub_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_5_im0_sub_0_q <= u0_m0_wo0_mtree_mult1_5_im0_sub_0_o(7 downto 0);

    -- u0_m0_wo0_mtree_mult1_5_im0_sub_2(SUB,1599)@11 + 1
    u0_m0_wo0_mtree_mult1_5_im0_sub_2_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((9 downto 8 => u0_m0_wo0_mtree_mult1_5_im0_sub_0_q(7)) & u0_m0_wo0_mtree_mult1_5_im0_sub_0_q));
    u0_m0_wo0_mtree_mult1_5_im0_sub_2_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((9 downto 9 => u0_m0_wo0_mtree_mult1_5_im0_shift1_q(8)) & u0_m0_wo0_mtree_mult1_5_im0_shift1_q));
    u0_m0_wo0_mtree_mult1_5_im0_sub_2_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_5_im0_sub_2_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_5_im0_sub_2_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_5_im0_sub_2_a) - SIGNED(u0_m0_wo0_mtree_mult1_5_im0_sub_2_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_5_im0_sub_2_q <= u0_m0_wo0_mtree_mult1_5_im0_sub_2_o(9 downto 0);

    -- u0_m0_wo0_mtree_mult1_5_align_21(BITSHIFT,828)@12
    u0_m0_wo0_mtree_mult1_5_align_21_qint <= STD_LOGIC_VECTOR((10 downto 10 => u0_m0_wo0_mtree_mult1_5_im0_sub_2_q(9)) & u0_m0_wo0_mtree_mult1_5_im0_sub_2_q) & "0000000000000000000000000000000000";
    u0_m0_wo0_mtree_mult1_5_align_21_q <= u0_m0_wo0_mtree_mult1_5_align_21_qint(44 downto 0);

    -- u0_m0_wo0_mtree_mult1_5_bjB10(BITJOIN,817)@10
    u0_m0_wo0_mtree_mult1_5_bjB10_q <= GND_q & u0_m0_wo0_mtree_mult1_5_bs2_merged_bit_select_c;

    -- d_u0_m0_wo0_mtree_mult1_5_bjB10_q_11(DELAY,3059)@10 + 1
    d_u0_m0_wo0_mtree_mult1_5_bjB10_q_11 : dspba_delay
    GENERIC MAP ( width => 18, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_mtree_mult1_5_bjB10_q, xout => d_u0_m0_wo0_mtree_mult1_5_bjB10_q_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_5_im7_shift1(BITSHIFT,1612)@11
    u0_m0_wo0_mtree_mult1_5_im7_shift1_qint <= d_u0_m0_wo0_mtree_mult1_5_bjB10_q_11_q & "00";
    u0_m0_wo0_mtree_mult1_5_im7_shift1_q <= u0_m0_wo0_mtree_mult1_5_im7_shift1_qint(19 downto 0);

    -- u0_m0_wo0_mtree_mult1_5_im7_sub_0(SUB,1611)@10 + 1
    u0_m0_wo0_mtree_mult1_5_im7_sub_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((18 downto 1 => GND_q(0)) & GND_q));
    u0_m0_wo0_mtree_mult1_5_im7_sub_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((18 downto 18 => u0_m0_wo0_mtree_mult1_5_bjB10_q(17)) & u0_m0_wo0_mtree_mult1_5_bjB10_q));
    u0_m0_wo0_mtree_mult1_5_im7_sub_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_5_im7_sub_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_5_im7_sub_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_5_im7_sub_0_a) - SIGNED(u0_m0_wo0_mtree_mult1_5_im7_sub_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_5_im7_sub_0_q <= u0_m0_wo0_mtree_mult1_5_im7_sub_0_o(18 downto 0);

    -- u0_m0_wo0_mtree_mult1_5_im7_sub_2(SUB,1613)@11 + 1
    u0_m0_wo0_mtree_mult1_5_im7_sub_2_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((20 downto 19 => u0_m0_wo0_mtree_mult1_5_im7_sub_0_q(18)) & u0_m0_wo0_mtree_mult1_5_im7_sub_0_q));
    u0_m0_wo0_mtree_mult1_5_im7_sub_2_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((20 downto 20 => u0_m0_wo0_mtree_mult1_5_im7_shift1_q(19)) & u0_m0_wo0_mtree_mult1_5_im7_shift1_q));
    u0_m0_wo0_mtree_mult1_5_im7_sub_2_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_5_im7_sub_2_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_5_im7_sub_2_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_5_im7_sub_2_a) - SIGNED(u0_m0_wo0_mtree_mult1_5_im7_sub_2_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_5_im7_sub_2_q <= u0_m0_wo0_mtree_mult1_5_im7_sub_2_o(20 downto 0);

    -- u0_m0_wo0_mtree_mult1_5_align_19(BITSHIFT,826)@12
    u0_m0_wo0_mtree_mult1_5_align_19_qint <= STD_LOGIC_VECTOR((21 downto 21 => u0_m0_wo0_mtree_mult1_5_im7_sub_2_q(20)) & u0_m0_wo0_mtree_mult1_5_im7_sub_2_q) & "00000000000000000";
    u0_m0_wo0_mtree_mult1_5_align_19_q <= u0_m0_wo0_mtree_mult1_5_align_19_qint(38 downto 0);

    -- u0_m0_wo0_mtree_mult1_5_result_add_0_1(ADD,831)@12 + 1
    u0_m0_wo0_mtree_mult1_5_result_add_0_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((45 downto 39 => u0_m0_wo0_mtree_mult1_5_align_19_q(38)) & u0_m0_wo0_mtree_mult1_5_align_19_q));
    u0_m0_wo0_mtree_mult1_5_result_add_0_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((45 downto 45 => u0_m0_wo0_mtree_mult1_5_align_21_q(44)) & u0_m0_wo0_mtree_mult1_5_align_21_q));
    u0_m0_wo0_mtree_mult1_5_result_add_0_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_5_result_add_0_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_5_result_add_0_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_5_result_add_0_1_a) + SIGNED(u0_m0_wo0_mtree_mult1_5_result_add_0_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_5_result_add_0_1_q <= u0_m0_wo0_mtree_mult1_5_result_add_0_1_o(45 downto 0);

    -- u0_m0_wo0_mtree_mult1_5_im3(MULT,810)@10 + 2
    u0_m0_wo0_mtree_mult1_5_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_31_bjA5_q_const_q);
    u0_m0_wo0_mtree_mult1_5_im3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_5_bs2_merged_bit_select_b);
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

    -- u0_m0_wo0_mtree_mult1_5_align_17(BITSHIFT,824)@12
    u0_m0_wo0_mtree_mult1_5_align_17_qint <= u0_m0_wo0_mtree_mult1_5_im3_q & "00000000000000000";
    u0_m0_wo0_mtree_mult1_5_align_17_q <= u0_m0_wo0_mtree_mult1_5_align_17_qint(41 downto 0);

    -- u0_m0_wo0_mtree_mult1_5_im11(MULT,818)@10 + 2
    u0_m0_wo0_mtree_mult1_5_im11_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_31_bjA5_q_const_q);
    u0_m0_wo0_mtree_mult1_5_im11_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_5_bjB10_q);
    u0_m0_wo0_mtree_mult1_5_im11_reset <= areset;
    u0_m0_wo0_mtree_mult1_5_im11_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 18,
        lpm_widthp => 36,
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

    -- u0_m0_wo0_mtree_mult1_5_result_add_0_0(ADD,830)@12 + 1
    u0_m0_wo0_mtree_mult1_5_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((42 downto 36 => u0_m0_wo0_mtree_mult1_5_im11_q(35)) & u0_m0_wo0_mtree_mult1_5_im11_q));
    u0_m0_wo0_mtree_mult1_5_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((42 downto 42 => u0_m0_wo0_mtree_mult1_5_align_17_q(41)) & u0_m0_wo0_mtree_mult1_5_align_17_q));
    u0_m0_wo0_mtree_mult1_5_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_5_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_5_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_5_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_5_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_5_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_5_result_add_0_0_o(42 downto 0);

    -- u0_m0_wo0_mtree_mult1_5_result_add_1_0(ADD,832)@13 + 1
    u0_m0_wo0_mtree_mult1_5_result_add_1_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((46 downto 43 => u0_m0_wo0_mtree_mult1_5_result_add_0_0_q(42)) & u0_m0_wo0_mtree_mult1_5_result_add_0_0_q));
    u0_m0_wo0_mtree_mult1_5_result_add_1_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((46 downto 46 => u0_m0_wo0_mtree_mult1_5_result_add_0_1_q(45)) & u0_m0_wo0_mtree_mult1_5_result_add_0_1_q));
    u0_m0_wo0_mtree_mult1_5_result_add_1_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_5_result_add_1_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_5_result_add_1_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_5_result_add_1_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_5_result_add_1_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_5_result_add_1_0_q <= u0_m0_wo0_mtree_mult1_5_result_add_1_0_o(46 downto 0);

    -- u0_m0_wo0_mtree_mult1_4_im0_shift0(BITSHIFT,1625)@11
    u0_m0_wo0_mtree_mult1_4_im0_shift0_qint <= d_u0_m0_wo0_mtree_mult1_4_bs2_merged_bit_select_b_11_q & "00";
    u0_m0_wo0_mtree_mult1_4_im0_shift0_q <= u0_m0_wo0_mtree_mult1_4_im0_shift0_qint(8 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr32(DELAY,51)@10
    u0_m0_wo0_wi0_r0_delayr32 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr31_q, xout => u0_m0_wo0_wi0_r0_delayr32_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_4_bs2_merged_bit_select(BITSELECT,3006)@10
    u0_m0_wo0_mtree_mult1_4_bs2_merged_bit_select_b <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr32_q(23 downto 17));
    u0_m0_wo0_mtree_mult1_4_bs2_merged_bit_select_c <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr32_q(16 downto 0));

    -- d_u0_m0_wo0_mtree_mult1_4_bs2_merged_bit_select_b_11(DELAY,3088)@10 + 1
    d_u0_m0_wo0_mtree_mult1_4_bs2_merged_bit_select_b_11 : dspba_delay
    GENERIC MAP ( width => 7, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_mtree_mult1_4_bs2_merged_bit_select_b, xout => d_u0_m0_wo0_mtree_mult1_4_bs2_merged_bit_select_b_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_4_im0_sub_1(SUB,1626)@11 + 1
    u0_m0_wo0_mtree_mult1_4_im0_sub_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((9 downto 7 => d_u0_m0_wo0_mtree_mult1_4_bs2_merged_bit_select_b_11_q(6)) & d_u0_m0_wo0_mtree_mult1_4_bs2_merged_bit_select_b_11_q));
    u0_m0_wo0_mtree_mult1_4_im0_sub_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((9 downto 9 => u0_m0_wo0_mtree_mult1_4_im0_shift0_q(8)) & u0_m0_wo0_mtree_mult1_4_im0_shift0_q));
    u0_m0_wo0_mtree_mult1_4_im0_sub_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_4_im0_sub_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_4_im0_sub_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_4_im0_sub_1_a) - SIGNED(u0_m0_wo0_mtree_mult1_4_im0_sub_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_4_im0_sub_1_q <= u0_m0_wo0_mtree_mult1_4_im0_sub_1_o(9 downto 0);

    -- u0_m0_wo0_mtree_mult1_4_im0_shift2(BITSHIFT,1627)@12
    u0_m0_wo0_mtree_mult1_4_im0_shift2_qint <= u0_m0_wo0_mtree_mult1_4_im0_sub_1_q & "0";
    u0_m0_wo0_mtree_mult1_4_im0_shift2_q <= u0_m0_wo0_mtree_mult1_4_im0_shift2_qint(10 downto 0);

    -- u0_m0_wo0_mtree_mult1_4_align_21(BITSHIFT,854)@12
    u0_m0_wo0_mtree_mult1_4_align_21_qint <= u0_m0_wo0_mtree_mult1_4_im0_shift2_q & "0000000000000000000000000000000000";
    u0_m0_wo0_mtree_mult1_4_align_21_q <= u0_m0_wo0_mtree_mult1_4_align_21_qint(44 downto 0);

    -- u0_m0_wo0_mtree_mult1_4_im7_shift0(BITSHIFT,1641)@11
    u0_m0_wo0_mtree_mult1_4_im7_shift0_qint <= d_u0_m0_wo0_mtree_mult1_4_bjB10_q_11_q & "00";
    u0_m0_wo0_mtree_mult1_4_im7_shift0_q <= u0_m0_wo0_mtree_mult1_4_im7_shift0_qint(19 downto 0);

    -- u0_m0_wo0_mtree_mult1_4_bjB10(BITJOIN,843)@10
    u0_m0_wo0_mtree_mult1_4_bjB10_q <= GND_q & u0_m0_wo0_mtree_mult1_4_bs2_merged_bit_select_c;

    -- d_u0_m0_wo0_mtree_mult1_4_bjB10_q_11(DELAY,3060)@10 + 1
    d_u0_m0_wo0_mtree_mult1_4_bjB10_q_11 : dspba_delay
    GENERIC MAP ( width => 18, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_mtree_mult1_4_bjB10_q, xout => d_u0_m0_wo0_mtree_mult1_4_bjB10_q_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_4_im7_sub_1(SUB,1642)@11 + 1
    u0_m0_wo0_mtree_mult1_4_im7_sub_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((20 downto 18 => d_u0_m0_wo0_mtree_mult1_4_bjB10_q_11_q(17)) & d_u0_m0_wo0_mtree_mult1_4_bjB10_q_11_q));
    u0_m0_wo0_mtree_mult1_4_im7_sub_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((20 downto 20 => u0_m0_wo0_mtree_mult1_4_im7_shift0_q(19)) & u0_m0_wo0_mtree_mult1_4_im7_shift0_q));
    u0_m0_wo0_mtree_mult1_4_im7_sub_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_4_im7_sub_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_4_im7_sub_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_4_im7_sub_1_a) - SIGNED(u0_m0_wo0_mtree_mult1_4_im7_sub_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_4_im7_sub_1_q <= u0_m0_wo0_mtree_mult1_4_im7_sub_1_o(20 downto 0);

    -- u0_m0_wo0_mtree_mult1_4_im7_shift2(BITSHIFT,1643)@12
    u0_m0_wo0_mtree_mult1_4_im7_shift2_qint <= u0_m0_wo0_mtree_mult1_4_im7_sub_1_q & "0";
    u0_m0_wo0_mtree_mult1_4_im7_shift2_q <= u0_m0_wo0_mtree_mult1_4_im7_shift2_qint(21 downto 0);

    -- u0_m0_wo0_mtree_mult1_4_align_19(BITSHIFT,852)@12
    u0_m0_wo0_mtree_mult1_4_align_19_qint <= u0_m0_wo0_mtree_mult1_4_im7_shift2_q & "00000000000000000";
    u0_m0_wo0_mtree_mult1_4_align_19_q <= u0_m0_wo0_mtree_mult1_4_align_19_qint(38 downto 0);

    -- u0_m0_wo0_mtree_mult1_4_result_add_0_1(ADD,857)@12 + 1
    u0_m0_wo0_mtree_mult1_4_result_add_0_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((45 downto 39 => u0_m0_wo0_mtree_mult1_4_align_19_q(38)) & u0_m0_wo0_mtree_mult1_4_align_19_q));
    u0_m0_wo0_mtree_mult1_4_result_add_0_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((45 downto 45 => u0_m0_wo0_mtree_mult1_4_align_21_q(44)) & u0_m0_wo0_mtree_mult1_4_align_21_q));
    u0_m0_wo0_mtree_mult1_4_result_add_0_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_4_result_add_0_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_4_result_add_0_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_4_result_add_0_1_a) + SIGNED(u0_m0_wo0_mtree_mult1_4_result_add_0_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_4_result_add_0_1_q <= u0_m0_wo0_mtree_mult1_4_result_add_0_1_o(45 downto 0);

    -- u0_m0_wo0_mtree_mult1_4_im3(MULT,836)@10 + 2
    u0_m0_wo0_mtree_mult1_4_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_32_bjA5_q_const_q);
    u0_m0_wo0_mtree_mult1_4_im3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_4_bs2_merged_bit_select_b);
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

    -- u0_m0_wo0_mtree_mult1_4_align_17(BITSHIFT,850)@12
    u0_m0_wo0_mtree_mult1_4_align_17_qint <= u0_m0_wo0_mtree_mult1_4_im3_q & "00000000000000000";
    u0_m0_wo0_mtree_mult1_4_align_17_q <= u0_m0_wo0_mtree_mult1_4_align_17_qint(41 downto 0);

    -- u0_m0_wo0_mtree_mult1_4_im11(MULT,844)@10 + 2
    u0_m0_wo0_mtree_mult1_4_im11_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_32_bjA5_q_const_q);
    u0_m0_wo0_mtree_mult1_4_im11_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_4_bjB10_q);
    u0_m0_wo0_mtree_mult1_4_im11_reset <= areset;
    u0_m0_wo0_mtree_mult1_4_im11_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 18,
        lpm_widthp => 36,
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

    -- u0_m0_wo0_mtree_mult1_4_result_add_0_0(ADD,856)@12 + 1
    u0_m0_wo0_mtree_mult1_4_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((42 downto 36 => u0_m0_wo0_mtree_mult1_4_im11_q(35)) & u0_m0_wo0_mtree_mult1_4_im11_q));
    u0_m0_wo0_mtree_mult1_4_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((42 downto 42 => u0_m0_wo0_mtree_mult1_4_align_17_q(41)) & u0_m0_wo0_mtree_mult1_4_align_17_q));
    u0_m0_wo0_mtree_mult1_4_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_4_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_4_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_4_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_4_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_4_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_4_result_add_0_0_o(42 downto 0);

    -- u0_m0_wo0_mtree_mult1_4_result_add_1_0(ADD,858)@13 + 1
    u0_m0_wo0_mtree_mult1_4_result_add_1_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((46 downto 43 => u0_m0_wo0_mtree_mult1_4_result_add_0_0_q(42)) & u0_m0_wo0_mtree_mult1_4_result_add_0_0_q));
    u0_m0_wo0_mtree_mult1_4_result_add_1_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((46 downto 46 => u0_m0_wo0_mtree_mult1_4_result_add_0_1_q(45)) & u0_m0_wo0_mtree_mult1_4_result_add_0_1_q));
    u0_m0_wo0_mtree_mult1_4_result_add_1_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_4_result_add_1_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_4_result_add_1_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_4_result_add_1_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_4_result_add_1_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_4_result_add_1_0_q <= u0_m0_wo0_mtree_mult1_4_result_add_1_0_o(46 downto 0);

    -- u0_m0_wo0_mtree_add0_2(ADD,135)@14 + 1
    u0_m0_wo0_mtree_add0_2_a <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_4_result_add_1_0_q(45 downto 0));
    u0_m0_wo0_mtree_add0_2_b <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_5_result_add_1_0_q(45 downto 0));
    u0_m0_wo0_mtree_add0_2_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_2_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_2_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_2_a) + SIGNED(u0_m0_wo0_mtree_add0_2_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_2_q <= u0_m0_wo0_mtree_add0_2_o(45 downto 0);

    -- u0_m0_wo0_mtree_add1_1(ADD,152)@15 + 1
    u0_m0_wo0_mtree_add1_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((46 downto 46 => u0_m0_wo0_mtree_add0_2_q(45)) & u0_m0_wo0_mtree_add0_2_q));
    u0_m0_wo0_mtree_add1_1_b <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_7_result_add_1_0_q);
    u0_m0_wo0_mtree_add1_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_1_a) + SIGNED(u0_m0_wo0_mtree_add1_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_1_q <= u0_m0_wo0_mtree_add1_1_o(46 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr33(DELAY,52)@10
    u0_m0_wo0_wi0_r0_delayr33 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr32_q, xout => u0_m0_wo0_wi0_r0_delayr33_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_r0_delayr33_q_11(DELAY,3035)@10 + 1
    d_u0_m0_wo0_wi0_r0_delayr33_q_11 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr33_q, xout => d_u0_m0_wo0_wi0_r0_delayr33_q_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_3_bs2_merged_bit_select(BITSELECT,3007)@11
    u0_m0_wo0_mtree_mult1_3_bs2_merged_bit_select_b <= STD_LOGIC_VECTOR(d_u0_m0_wo0_wi0_r0_delayr33_q_11_q(23 downto 17));
    u0_m0_wo0_mtree_mult1_3_bs2_merged_bit_select_c <= STD_LOGIC_VECTOR(d_u0_m0_wo0_wi0_r0_delayr33_q_11_q(16 downto 0));

    -- d_u0_m0_wo0_mtree_mult1_3_bs2_merged_bit_select_b_12(DELAY,3089)@11 + 1
    d_u0_m0_wo0_mtree_mult1_3_bs2_merged_bit_select_b_12 : dspba_delay
    GENERIC MAP ( width => 7, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_mtree_mult1_3_bs2_merged_bit_select_b, xout => d_u0_m0_wo0_mtree_mult1_3_bs2_merged_bit_select_b_12_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_3_im0_shift0(BITSHIFT,1657)@12
    u0_m0_wo0_mtree_mult1_3_im0_shift0_qint <= d_u0_m0_wo0_mtree_mult1_3_bs2_merged_bit_select_b_12_q & "00";
    u0_m0_wo0_mtree_mult1_3_im0_shift0_q <= u0_m0_wo0_mtree_mult1_3_im0_shift0_qint(8 downto 0);

    -- u0_m0_wo0_mtree_mult1_3_im0_sub_1(SUB,1658)@12 + 1
    u0_m0_wo0_mtree_mult1_3_im0_sub_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((9 downto 1 => GND_q(0)) & GND_q));
    u0_m0_wo0_mtree_mult1_3_im0_sub_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((9 downto 9 => u0_m0_wo0_mtree_mult1_3_im0_shift0_q(8)) & u0_m0_wo0_mtree_mult1_3_im0_shift0_q));
    u0_m0_wo0_mtree_mult1_3_im0_sub_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_3_im0_sub_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_3_im0_sub_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_3_im0_sub_1_a) - SIGNED(u0_m0_wo0_mtree_mult1_3_im0_sub_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_3_im0_sub_1_q <= u0_m0_wo0_mtree_mult1_3_im0_sub_1_o(9 downto 0);

    -- u0_m0_wo0_mtree_mult1_3_align_21(BITSHIFT,880)@13
    u0_m0_wo0_mtree_mult1_3_align_21_qint <= u0_m0_wo0_mtree_mult1_3_im0_sub_1_q & "0000000000000000000000000000000000";
    u0_m0_wo0_mtree_mult1_3_align_21_q <= u0_m0_wo0_mtree_mult1_3_align_21_qint(43 downto 0);

    -- u0_m0_wo0_mtree_mult1_3_bjB10(BITJOIN,869)@11
    u0_m0_wo0_mtree_mult1_3_bjB10_q <= GND_q & u0_m0_wo0_mtree_mult1_3_bs2_merged_bit_select_c;

    -- d_u0_m0_wo0_mtree_mult1_3_bjB10_q_12(DELAY,3061)@11 + 1
    d_u0_m0_wo0_mtree_mult1_3_bjB10_q_12 : dspba_delay
    GENERIC MAP ( width => 18, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_mtree_mult1_3_bjB10_q, xout => d_u0_m0_wo0_mtree_mult1_3_bjB10_q_12_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_3_im7_shift0(BITSHIFT,1672)@12
    u0_m0_wo0_mtree_mult1_3_im7_shift0_qint <= d_u0_m0_wo0_mtree_mult1_3_bjB10_q_12_q & "00";
    u0_m0_wo0_mtree_mult1_3_im7_shift0_q <= u0_m0_wo0_mtree_mult1_3_im7_shift0_qint(19 downto 0);

    -- u0_m0_wo0_mtree_mult1_3_im7_sub_1(SUB,1673)@12 + 1
    u0_m0_wo0_mtree_mult1_3_im7_sub_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((20 downto 1 => GND_q(0)) & GND_q));
    u0_m0_wo0_mtree_mult1_3_im7_sub_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((20 downto 20 => u0_m0_wo0_mtree_mult1_3_im7_shift0_q(19)) & u0_m0_wo0_mtree_mult1_3_im7_shift0_q));
    u0_m0_wo0_mtree_mult1_3_im7_sub_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_3_im7_sub_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_3_im7_sub_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_3_im7_sub_1_a) - SIGNED(u0_m0_wo0_mtree_mult1_3_im7_sub_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_3_im7_sub_1_q <= u0_m0_wo0_mtree_mult1_3_im7_sub_1_o(20 downto 0);

    -- u0_m0_wo0_mtree_mult1_3_align_19(BITSHIFT,878)@13
    u0_m0_wo0_mtree_mult1_3_align_19_qint <= u0_m0_wo0_mtree_mult1_3_im7_sub_1_q & "00000000000000000";
    u0_m0_wo0_mtree_mult1_3_align_19_q <= u0_m0_wo0_mtree_mult1_3_align_19_qint(37 downto 0);

    -- u0_m0_wo0_mtree_mult1_3_result_add_0_1(ADD,883)@13 + 1
    u0_m0_wo0_mtree_mult1_3_result_add_0_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((44 downto 38 => u0_m0_wo0_mtree_mult1_3_align_19_q(37)) & u0_m0_wo0_mtree_mult1_3_align_19_q));
    u0_m0_wo0_mtree_mult1_3_result_add_0_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((44 downto 44 => u0_m0_wo0_mtree_mult1_3_align_21_q(43)) & u0_m0_wo0_mtree_mult1_3_align_21_q));
    u0_m0_wo0_mtree_mult1_3_result_add_0_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_3_result_add_0_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_3_result_add_0_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_3_result_add_0_1_a) + SIGNED(u0_m0_wo0_mtree_mult1_3_result_add_0_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_3_result_add_0_1_q <= u0_m0_wo0_mtree_mult1_3_result_add_0_1_o(44 downto 0);

    -- u0_m0_wo0_mtree_mult1_3_im3(MULT,862)@11 + 2
    u0_m0_wo0_mtree_mult1_3_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_33_bjA5_q_const_q);
    u0_m0_wo0_mtree_mult1_3_im3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_3_bs2_merged_bit_select_b);
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

    -- u0_m0_wo0_mtree_mult1_3_align_17(BITSHIFT,876)@13
    u0_m0_wo0_mtree_mult1_3_align_17_qint <= u0_m0_wo0_mtree_mult1_3_im3_q & "00000000000000000";
    u0_m0_wo0_mtree_mult1_3_align_17_q <= u0_m0_wo0_mtree_mult1_3_align_17_qint(41 downto 0);

    -- u0_m0_wo0_mtree_mult1_3_im11(MULT,870)@11 + 2
    u0_m0_wo0_mtree_mult1_3_im11_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_33_bjA5_q_const_q);
    u0_m0_wo0_mtree_mult1_3_im11_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_3_bjB10_q);
    u0_m0_wo0_mtree_mult1_3_im11_reset <= areset;
    u0_m0_wo0_mtree_mult1_3_im11_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 18,
        lpm_widthp => 36,
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

    -- u0_m0_wo0_mtree_mult1_3_result_add_0_0(ADD,882)@13 + 1
    u0_m0_wo0_mtree_mult1_3_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((42 downto 36 => u0_m0_wo0_mtree_mult1_3_im11_q(35)) & u0_m0_wo0_mtree_mult1_3_im11_q));
    u0_m0_wo0_mtree_mult1_3_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((42 downto 42 => u0_m0_wo0_mtree_mult1_3_align_17_q(41)) & u0_m0_wo0_mtree_mult1_3_align_17_q));
    u0_m0_wo0_mtree_mult1_3_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_3_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_3_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_3_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_3_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_3_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_3_result_add_0_0_o(42 downto 0);

    -- u0_m0_wo0_mtree_mult1_3_result_add_1_0(ADD,884)@14 + 1
    u0_m0_wo0_mtree_mult1_3_result_add_1_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((45 downto 43 => u0_m0_wo0_mtree_mult1_3_result_add_0_0_q(42)) & u0_m0_wo0_mtree_mult1_3_result_add_0_0_q));
    u0_m0_wo0_mtree_mult1_3_result_add_1_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((45 downto 45 => u0_m0_wo0_mtree_mult1_3_result_add_0_1_q(44)) & u0_m0_wo0_mtree_mult1_3_result_add_0_1_q));
    u0_m0_wo0_mtree_mult1_3_result_add_1_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_3_result_add_1_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_3_result_add_1_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_3_result_add_1_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_3_result_add_1_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_3_result_add_1_0_q <= u0_m0_wo0_mtree_mult1_3_result_add_1_0_o(45 downto 0);

    -- u0_m0_wo0_mtree_mult1_1_im0_shift0(BITSHIFT,1687)@11
    u0_m0_wo0_mtree_mult1_1_im0_shift0_qint <= d_u0_m0_wo0_mtree_mult1_1_bs2_merged_bit_select_b_11_q & "0";
    u0_m0_wo0_mtree_mult1_1_im0_shift0_q <= u0_m0_wo0_mtree_mult1_1_im0_shift0_qint(7 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr34(DELAY,53)@10
    u0_m0_wo0_wi0_r0_delayr34 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr33_q, xout => u0_m0_wo0_wi0_r0_delayr34_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_wi0_r0_delayr35(DELAY,54)@10
    u0_m0_wo0_wi0_r0_delayr35 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr34_q, xout => u0_m0_wo0_wi0_r0_delayr35_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_1_bs2_merged_bit_select(BITSELECT,3008)@10
    u0_m0_wo0_mtree_mult1_1_bs2_merged_bit_select_b <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr35_q(23 downto 17));
    u0_m0_wo0_mtree_mult1_1_bs2_merged_bit_select_c <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr35_q(16 downto 0));

    -- d_u0_m0_wo0_mtree_mult1_1_bs2_merged_bit_select_b_11(DELAY,3090)@10 + 1
    d_u0_m0_wo0_mtree_mult1_1_bs2_merged_bit_select_b_11 : dspba_delay
    GENERIC MAP ( width => 7, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_mtree_mult1_1_bs2_merged_bit_select_b, xout => d_u0_m0_wo0_mtree_mult1_1_bs2_merged_bit_select_b_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_1_im0_add_1(ADD,1688)@11 + 1
    u0_m0_wo0_mtree_mult1_1_im0_add_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((8 downto 7 => d_u0_m0_wo0_mtree_mult1_1_bs2_merged_bit_select_b_11_q(6)) & d_u0_m0_wo0_mtree_mult1_1_bs2_merged_bit_select_b_11_q));
    u0_m0_wo0_mtree_mult1_1_im0_add_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((8 downto 8 => u0_m0_wo0_mtree_mult1_1_im0_shift0_q(7)) & u0_m0_wo0_mtree_mult1_1_im0_shift0_q));
    u0_m0_wo0_mtree_mult1_1_im0_add_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_1_im0_add_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_1_im0_add_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_1_im0_add_1_a) + SIGNED(u0_m0_wo0_mtree_mult1_1_im0_add_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_1_im0_add_1_q <= u0_m0_wo0_mtree_mult1_1_im0_add_1_o(8 downto 0);

    -- u0_m0_wo0_mtree_mult1_1_align_21(BITSHIFT,906)@12
    u0_m0_wo0_mtree_mult1_1_align_21_qint <= STD_LOGIC_VECTOR((9 downto 9 => u0_m0_wo0_mtree_mult1_1_im0_add_1_q(8)) & u0_m0_wo0_mtree_mult1_1_im0_add_1_q) & "0000000000000000000000000000000000";
    u0_m0_wo0_mtree_mult1_1_align_21_q <= u0_m0_wo0_mtree_mult1_1_align_21_qint(43 downto 0);

    -- u0_m0_wo0_mtree_mult1_1_im7_shift0(BITSHIFT,1699)@11
    u0_m0_wo0_mtree_mult1_1_im7_shift0_qint <= d_u0_m0_wo0_mtree_mult1_1_bjB10_q_11_q & "0";
    u0_m0_wo0_mtree_mult1_1_im7_shift0_q <= u0_m0_wo0_mtree_mult1_1_im7_shift0_qint(18 downto 0);

    -- u0_m0_wo0_mtree_mult1_1_bjB10(BITJOIN,895)@10
    u0_m0_wo0_mtree_mult1_1_bjB10_q <= GND_q & u0_m0_wo0_mtree_mult1_1_bs2_merged_bit_select_c;

    -- d_u0_m0_wo0_mtree_mult1_1_bjB10_q_11(DELAY,3062)@10 + 1
    d_u0_m0_wo0_mtree_mult1_1_bjB10_q_11 : dspba_delay
    GENERIC MAP ( width => 18, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_mtree_mult1_1_bjB10_q, xout => d_u0_m0_wo0_mtree_mult1_1_bjB10_q_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_1_im7_add_1(ADD,1700)@11 + 1
    u0_m0_wo0_mtree_mult1_1_im7_add_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((19 downto 18 => d_u0_m0_wo0_mtree_mult1_1_bjB10_q_11_q(17)) & d_u0_m0_wo0_mtree_mult1_1_bjB10_q_11_q));
    u0_m0_wo0_mtree_mult1_1_im7_add_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((19 downto 19 => u0_m0_wo0_mtree_mult1_1_im7_shift0_q(18)) & u0_m0_wo0_mtree_mult1_1_im7_shift0_q));
    u0_m0_wo0_mtree_mult1_1_im7_add_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_1_im7_add_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_1_im7_add_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_1_im7_add_1_a) + SIGNED(u0_m0_wo0_mtree_mult1_1_im7_add_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_1_im7_add_1_q <= u0_m0_wo0_mtree_mult1_1_im7_add_1_o(19 downto 0);

    -- u0_m0_wo0_mtree_mult1_1_align_19(BITSHIFT,904)@12
    u0_m0_wo0_mtree_mult1_1_align_19_qint <= STD_LOGIC_VECTOR((20 downto 20 => u0_m0_wo0_mtree_mult1_1_im7_add_1_q(19)) & u0_m0_wo0_mtree_mult1_1_im7_add_1_q) & "00000000000000000";
    u0_m0_wo0_mtree_mult1_1_align_19_q <= u0_m0_wo0_mtree_mult1_1_align_19_qint(37 downto 0);

    -- u0_m0_wo0_mtree_mult1_1_result_add_0_1(ADD,909)@12 + 1
    u0_m0_wo0_mtree_mult1_1_result_add_0_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((44 downto 38 => u0_m0_wo0_mtree_mult1_1_align_19_q(37)) & u0_m0_wo0_mtree_mult1_1_align_19_q));
    u0_m0_wo0_mtree_mult1_1_result_add_0_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((44 downto 44 => u0_m0_wo0_mtree_mult1_1_align_21_q(43)) & u0_m0_wo0_mtree_mult1_1_align_21_q));
    u0_m0_wo0_mtree_mult1_1_result_add_0_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_1_result_add_0_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_1_result_add_0_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_1_result_add_0_1_a) + SIGNED(u0_m0_wo0_mtree_mult1_1_result_add_0_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_1_result_add_0_1_q <= u0_m0_wo0_mtree_mult1_1_result_add_0_1_o(44 downto 0);

    -- u0_m0_wo0_mtree_mult1_1_im3(MULT,888)@10 + 2
    u0_m0_wo0_mtree_mult1_1_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_35_bjA5_q_const_q);
    u0_m0_wo0_mtree_mult1_1_im3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_1_bs2_merged_bit_select_b);
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

    -- u0_m0_wo0_mtree_mult1_1_align_17(BITSHIFT,902)@12
    u0_m0_wo0_mtree_mult1_1_align_17_qint <= u0_m0_wo0_mtree_mult1_1_im3_q & "00000000000000000";
    u0_m0_wo0_mtree_mult1_1_align_17_q <= u0_m0_wo0_mtree_mult1_1_align_17_qint(41 downto 0);

    -- u0_m0_wo0_mtree_mult1_1_im11(MULT,896)@10 + 2
    u0_m0_wo0_mtree_mult1_1_im11_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_35_bjA5_q_const_q);
    u0_m0_wo0_mtree_mult1_1_im11_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_1_bjB10_q);
    u0_m0_wo0_mtree_mult1_1_im11_reset <= areset;
    u0_m0_wo0_mtree_mult1_1_im11_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 18,
        lpm_widthp => 36,
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

    -- u0_m0_wo0_mtree_mult1_1_result_add_0_0(ADD,908)@12 + 1
    u0_m0_wo0_mtree_mult1_1_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((42 downto 36 => u0_m0_wo0_mtree_mult1_1_im11_q(35)) & u0_m0_wo0_mtree_mult1_1_im11_q));
    u0_m0_wo0_mtree_mult1_1_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((42 downto 42 => u0_m0_wo0_mtree_mult1_1_align_17_q(41)) & u0_m0_wo0_mtree_mult1_1_align_17_q));
    u0_m0_wo0_mtree_mult1_1_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_1_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_1_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_1_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_1_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_1_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_1_result_add_0_0_o(42 downto 0);

    -- u0_m0_wo0_mtree_mult1_1_result_add_1_0(ADD,910)@13 + 1
    u0_m0_wo0_mtree_mult1_1_result_add_1_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((45 downto 43 => u0_m0_wo0_mtree_mult1_1_result_add_0_0_q(42)) & u0_m0_wo0_mtree_mult1_1_result_add_0_0_q));
    u0_m0_wo0_mtree_mult1_1_result_add_1_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((45 downto 45 => u0_m0_wo0_mtree_mult1_1_result_add_0_1_q(44)) & u0_m0_wo0_mtree_mult1_1_result_add_0_1_q));
    u0_m0_wo0_mtree_mult1_1_result_add_1_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_1_result_add_1_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_1_result_add_1_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_1_result_add_1_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_1_result_add_1_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_1_result_add_1_0_q <= u0_m0_wo0_mtree_mult1_1_result_add_1_0_o(45 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr36(DELAY,55)@10
    u0_m0_wo0_wi0_r0_delayr36 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr35_q, xout => u0_m0_wo0_wi0_r0_delayr36_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_0_bs2_merged_bit_select(BITSELECT,3009)@10
    u0_m0_wo0_mtree_mult1_0_bs2_merged_bit_select_b <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr36_q(23 downto 17));
    u0_m0_wo0_mtree_mult1_0_bs2_merged_bit_select_c <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr36_q(16 downto 0));

    -- d_u0_m0_wo0_mtree_mult1_0_bs2_merged_bit_select_b_12(DELAY,3091)@10 + 2
    d_u0_m0_wo0_mtree_mult1_0_bs2_merged_bit_select_b_12 : dspba_delay
    GENERIC MAP ( width => 7, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_mtree_mult1_0_bs2_merged_bit_select_b, xout => d_u0_m0_wo0_mtree_mult1_0_bs2_merged_bit_select_b_12_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_0_im0_shift0(BITSHIFT,1711)@12
    u0_m0_wo0_mtree_mult1_0_im0_shift0_qint <= d_u0_m0_wo0_mtree_mult1_0_bs2_merged_bit_select_b_12_q & "00";
    u0_m0_wo0_mtree_mult1_0_im0_shift0_q <= u0_m0_wo0_mtree_mult1_0_im0_shift0_qint(8 downto 0);

    -- u0_m0_wo0_mtree_mult1_0_align_21(BITSHIFT,932)@12
    u0_m0_wo0_mtree_mult1_0_align_21_qint <= STD_LOGIC_VECTOR((10 downto 9 => u0_m0_wo0_mtree_mult1_0_im0_shift0_q(8)) & u0_m0_wo0_mtree_mult1_0_im0_shift0_q) & "0000000000000000000000000000000000";
    u0_m0_wo0_mtree_mult1_0_align_21_q <= u0_m0_wo0_mtree_mult1_0_align_21_qint(44 downto 0);

    -- u0_m0_wo0_mtree_mult1_0_bjB10(BITJOIN,921)@10
    u0_m0_wo0_mtree_mult1_0_bjB10_q <= GND_q & u0_m0_wo0_mtree_mult1_0_bs2_merged_bit_select_c;

    -- d_u0_m0_wo0_mtree_mult1_0_bjB10_q_12(DELAY,3063)@10 + 2
    d_u0_m0_wo0_mtree_mult1_0_bjB10_q_12 : dspba_delay
    GENERIC MAP ( width => 18, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_mtree_mult1_0_bjB10_q, xout => d_u0_m0_wo0_mtree_mult1_0_bjB10_q_12_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_0_im7_shift0(BITSHIFT,1726)@12
    u0_m0_wo0_mtree_mult1_0_im7_shift0_qint <= d_u0_m0_wo0_mtree_mult1_0_bjB10_q_12_q & "00";
    u0_m0_wo0_mtree_mult1_0_im7_shift0_q <= u0_m0_wo0_mtree_mult1_0_im7_shift0_qint(19 downto 0);

    -- u0_m0_wo0_mtree_mult1_0_align_19(BITSHIFT,930)@12
    u0_m0_wo0_mtree_mult1_0_align_19_qint <= STD_LOGIC_VECTOR((21 downto 20 => u0_m0_wo0_mtree_mult1_0_im7_shift0_q(19)) & u0_m0_wo0_mtree_mult1_0_im7_shift0_q) & "00000000000000000";
    u0_m0_wo0_mtree_mult1_0_align_19_q <= u0_m0_wo0_mtree_mult1_0_align_19_qint(38 downto 0);

    -- u0_m0_wo0_mtree_mult1_0_result_add_0_1(ADD,935)@12 + 1
    u0_m0_wo0_mtree_mult1_0_result_add_0_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((45 downto 39 => u0_m0_wo0_mtree_mult1_0_align_19_q(38)) & u0_m0_wo0_mtree_mult1_0_align_19_q));
    u0_m0_wo0_mtree_mult1_0_result_add_0_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((45 downto 45 => u0_m0_wo0_mtree_mult1_0_align_21_q(44)) & u0_m0_wo0_mtree_mult1_0_align_21_q));
    u0_m0_wo0_mtree_mult1_0_result_add_0_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_0_result_add_0_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_0_result_add_0_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_0_result_add_0_1_a) + SIGNED(u0_m0_wo0_mtree_mult1_0_result_add_0_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_0_result_add_0_1_q <= u0_m0_wo0_mtree_mult1_0_result_add_0_1_o(45 downto 0);

    -- u0_m0_wo0_mtree_mult1_0_im3(MULT,914)@10 + 2
    u0_m0_wo0_mtree_mult1_0_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_36_bjA5_q_const_q);
    u0_m0_wo0_mtree_mult1_0_im3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_0_bs2_merged_bit_select_b);
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

    -- u0_m0_wo0_mtree_mult1_0_align_17(BITSHIFT,928)@12
    u0_m0_wo0_mtree_mult1_0_align_17_qint <= u0_m0_wo0_mtree_mult1_0_im3_q & "00000000000000000";
    u0_m0_wo0_mtree_mult1_0_align_17_q <= u0_m0_wo0_mtree_mult1_0_align_17_qint(41 downto 0);

    -- u0_m0_wo0_mtree_mult1_0_im11(MULT,922)@10 + 2
    u0_m0_wo0_mtree_mult1_0_im11_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_36_bjA5_q_const_q);
    u0_m0_wo0_mtree_mult1_0_im11_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_0_bjB10_q);
    u0_m0_wo0_mtree_mult1_0_im11_reset <= areset;
    u0_m0_wo0_mtree_mult1_0_im11_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 18,
        lpm_widthp => 36,
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

    -- u0_m0_wo0_mtree_mult1_0_result_add_0_0(ADD,934)@12 + 1
    u0_m0_wo0_mtree_mult1_0_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((42 downto 36 => u0_m0_wo0_mtree_mult1_0_im11_q(35)) & u0_m0_wo0_mtree_mult1_0_im11_q));
    u0_m0_wo0_mtree_mult1_0_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((42 downto 42 => u0_m0_wo0_mtree_mult1_0_align_17_q(41)) & u0_m0_wo0_mtree_mult1_0_align_17_q));
    u0_m0_wo0_mtree_mult1_0_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_0_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_0_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_0_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_0_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_0_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_0_result_add_0_0_o(42 downto 0);

    -- u0_m0_wo0_mtree_mult1_0_result_add_1_0(ADD,936)@13 + 1
    u0_m0_wo0_mtree_mult1_0_result_add_1_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((46 downto 43 => u0_m0_wo0_mtree_mult1_0_result_add_0_0_q(42)) & u0_m0_wo0_mtree_mult1_0_result_add_0_0_q));
    u0_m0_wo0_mtree_mult1_0_result_add_1_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((46 downto 46 => u0_m0_wo0_mtree_mult1_0_result_add_0_1_q(45)) & u0_m0_wo0_mtree_mult1_0_result_add_0_1_q));
    u0_m0_wo0_mtree_mult1_0_result_add_1_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_0_result_add_1_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_0_result_add_1_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_0_result_add_1_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_0_result_add_1_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_0_result_add_1_0_q <= u0_m0_wo0_mtree_mult1_0_result_add_1_0_o(46 downto 0);

    -- u0_m0_wo0_mtree_add0_0(ADD,133)@14 + 1
    u0_m0_wo0_mtree_add0_0_a <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_0_result_add_1_0_q(45 downto 0));
    u0_m0_wo0_mtree_add0_0_b <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_1_result_add_1_0_q);
    u0_m0_wo0_mtree_add0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_0_a) + SIGNED(u0_m0_wo0_mtree_add0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_0_q <= u0_m0_wo0_mtree_add0_0_o(45 downto 0);

    -- u0_m0_wo0_mtree_add1_0(ADD,151)@15 + 1
    u0_m0_wo0_mtree_add1_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((46 downto 46 => u0_m0_wo0_mtree_add0_0_q(45)) & u0_m0_wo0_mtree_add0_0_q));
    u0_m0_wo0_mtree_add1_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((46 downto 46 => u0_m0_wo0_mtree_mult1_3_result_add_1_0_q(45)) & u0_m0_wo0_mtree_mult1_3_result_add_1_0_q));
    u0_m0_wo0_mtree_add1_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_0_a) + SIGNED(u0_m0_wo0_mtree_add1_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_0_q <= u0_m0_wo0_mtree_add1_0_o(46 downto 0);

    -- u0_m0_wo0_mtree_add2_0(ADD,160)@16 + 1
    u0_m0_wo0_mtree_add2_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((47 downto 47 => u0_m0_wo0_mtree_add1_0_q(46)) & u0_m0_wo0_mtree_add1_0_q));
    u0_m0_wo0_mtree_add2_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((47 downto 47 => u0_m0_wo0_mtree_add1_1_q(46)) & u0_m0_wo0_mtree_add1_1_q));
    u0_m0_wo0_mtree_add2_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add2_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add2_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add2_0_a) + SIGNED(u0_m0_wo0_mtree_add2_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add2_0_q <= u0_m0_wo0_mtree_add2_0_o(47 downto 0);

    -- u0_m0_wo0_mtree_add3_0(ADD,165)@17 + 1
    u0_m0_wo0_mtree_add3_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((50 downto 48 => u0_m0_wo0_mtree_add2_0_q(47)) & u0_m0_wo0_mtree_add2_0_q));
    u0_m0_wo0_mtree_add3_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((50 downto 50 => u0_m0_wo0_mtree_add2_1_q(49)) & u0_m0_wo0_mtree_add2_1_q));
    u0_m0_wo0_mtree_add3_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add3_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add3_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add3_0_a) + SIGNED(u0_m0_wo0_mtree_add3_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add3_0_q <= u0_m0_wo0_mtree_add3_0_o(50 downto 0);

    -- u0_m0_wo0_mtree_add4_0(ADD,167)@18 + 1
    u0_m0_wo0_mtree_add4_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((52 downto 51 => u0_m0_wo0_mtree_add3_0_q(50)) & u0_m0_wo0_mtree_add3_0_q));
    u0_m0_wo0_mtree_add4_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((52 downto 52 => u0_m0_wo0_mtree_add3_1_q(51)) & u0_m0_wo0_mtree_add3_1_q));
    u0_m0_wo0_mtree_add4_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add4_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add4_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add4_0_a) + SIGNED(u0_m0_wo0_mtree_add4_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add4_0_q <= u0_m0_wo0_mtree_add4_0_o(52 downto 0);

    -- u0_m0_wo0_mtree_add5_0(ADD,168)@19 + 1
    u0_m0_wo0_mtree_add5_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((53 downto 53 => u0_m0_wo0_mtree_add4_0_q(52)) & u0_m0_wo0_mtree_add4_0_q));
    u0_m0_wo0_mtree_add5_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((53 downto 48 => u0_m0_wo0_mtree_add2_4_q(47)) & u0_m0_wo0_mtree_add2_4_q));
    u0_m0_wo0_mtree_add5_0_clkproc: PROCESS (clk, areset)
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

    -- d_u0_m0_wo0_compute_q_19(DELAY,3023)@10 + 9
    d_u0_m0_wo0_compute_q_19 : dspba_delay
    GENERIC MAP ( width => 1, depth => 9, reset_kind => "ASYNC" )
    PORT MAP ( xin => xIn_v, xout => d_u0_m0_wo0_compute_q_19_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_oseq_gated_reg(REG,169)@19 + 1
    u0_m0_wo0_oseq_gated_reg_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_oseq_gated_reg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_oseq_gated_reg_q <= STD_LOGIC_VECTOR(d_u0_m0_wo0_compute_q_19_q);
        END IF;
    END PROCESS;

    -- xOut(PORTOUT,174)@20 + 1
    xOut_v <= u0_m0_wo0_oseq_gated_reg_q;
    xOut_c <= STD_LOGIC_VECTOR("0000000" & GND_q);
    xOut_0 <= u0_m0_wo0_mtree_add5_0_q;

END normal;
