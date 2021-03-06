------------------------------------------------------------------------
--
-- Testbench for basic gates circuit.
-- Nexys A7-50T, Vivado v2020.1, EDA Playground
--
-- Copyright (c) 2020 Tomas Fryza
-- Dept. of Radio Electronics, Brno University of Technology, Czechia
-- This workjavascript:void(0) is licensed under the terms of the MIT license.
--
------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

------------------------------------------------------------------------
-- Entity declaration for testbench
------------------------------------------------------------------------
entity tb_gates is
    -- Entity of testbench is always empty
end entity tb_gates;

------------------------------------------------------------------------
-- Architecture body for testbench
------------------------------------------------------------------------
architecture testbench of tb_gates is

    -- Local signals
    signal s_a    : std_logic;
    signal s_b    : std_logic;
    signal s_c    : std_logic;
    signal s_out  : std_logic;
    signal s_out2  : std_logic;
    signal s_out3  : std_logic;

begin
    -- Connecting testbench signals with gates entity (Unit Under Test)
    uut_gates : entity work.gates
        port map(
            a_i    => s_a,
            b_i    => s_b,
            c_i    => s_c,
            out_o  => s_out,
            out2_o => s_out2,
            out3_o => s_out3
        
        );

    --------------------------------------------------------------------
    -- Data generation process
    --------------------------------------------------------------------
    p_stimulus : process
    begin
    	s_c <= '0';
        s_b <= '0';             -- Set input values and wait for 100 ns
        s_a <= '0';
        wait for 100 ns;
		s_c <= '0';
        s_b <= '0';
        s_a <= '1';
        wait for 100 ns;
        s_c <= '0';
        s_b <= '1';
        s_a <= '0';
        wait for 100 ns;
        s_c <= '0';
        s_b <= '1';
        s_a <= '1';
        wait for 100 ns;
        s_c <= '1';
        s_b <= '0';
        s_a <= '0';
        wait for 100 ns;
        s_c <= '1';
        s_b <= '0';
        s_a <= '1';
        wait for 100 ns;
        s_c <= '1';
        s_b <= '1';
        s_a <= '0';
        wait for 100 ns;
        s_c <= '1';
        s_b <= '1';
        s_a <= '1';
        wait for 100 ns;
        
        wait;                   -- Process is suspended forever
    end process p_stimulus;

end architecture testbench;
