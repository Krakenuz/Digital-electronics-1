------------------------------------------------------------------------
--
-- Example of basic OR, AND, XOR gates.
-- Nexys A7-50T, Vivado v2020.1, EDA Playground
--
-- Copyright (c) 2019-2020 Tomas Fryza
-- Dept. of Radio Electronics, Brno University of Technology, Czechia
-- This work is licensed under the terms of the MIT license.
--
------------------------------------------------------------------------

library ieee;               -- Standard library
use ieee.std_logic_1164.all;-- Package for data types and logic operations

------------------------------------------------------------------------
-- Entity declaration for basic gates
------------------------------------------------------------------------
entity gates is
    port(
        a_i    : in  std_logic;         -- Data input
        b_i    : in  std_logic;
        c_i    : in  std_logic;			-- Data input
        out_o  : out std_logic;         -- OUT x*notx=0
        out2_o	: out std_logic;		--OUT2 x+notx =1
        out3_o	: out std_logic; 		--OUT3 x+x+x=x
        out4_o	: out std_logic;		--OUT4 X*X*X = X
        out5_o	: out std_logic;		--OUT5 X*Y+X*Z
        out6_o	: out std_logic;		--OUT6 X(Y+Z)
        out7_o	: out std_logic;		--OUT7 (X+Y)*(X+Z)
        out8_o	: out std_logic 		--OUT8 X+(Y*Z)
        
    );
end entity gates;

------------------------------------------------------------------------
-- Architecture body for basic gates
------------------------------------------------------------------------
architecture dataflow of gates is
begin
    out_o  <= a_i and (not a_i);
    out2_o <= a_i or (not a_i);
    out3_o <= a_i or a_i or a_i;
    out4_o <= a_i and a_i and a_i;
    out5_o <= (a_i and b_i) or (a_i and c_i);
    out6_o <= a_i and (b_i or c_i);
    out7_o <= (a_i or b_i) and (a_i or c_i);
    out8_o <= a_i or (b_i and c_i);
end architecture dataflow;
