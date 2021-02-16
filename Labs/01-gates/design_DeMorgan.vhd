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
        out_o  : out std_logic;         -- OUT
        out2_o	: out std_logic;		--OUT2 NAND ONLY (notB NAND A) NAND (notC NAND notB)
        out3_o	: out std_logic			--OUT3 NOR ONLY
    );
end entity gates;

------------------------------------------------------------------------
-- Architecture body for basic gates
------------------------------------------------------------------------
architecture dataflow of gates is
begin
    out_o  <= ((not b_i) and a_i) or ((not c_i) and (not b_i));
	out2_o <= ((b_i nand b_i) nand a_i) nand ((c_i nand c_i) nand (b_i nand b_i));
    out3_o <= (((a_i NOR a_i) NOR b_i) NOR (c_i NOR b_i)) NOR (((a_i nor a_i) NOR b_i) NOR (c_i NOR b_i));
end architecture dataflow;
