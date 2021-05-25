----------------------------------------------------------------------------------
-- Company:        Kettering University
-- Engineer:       Max Dreher
-- 
-- Create Date:    5/25/2021
-- Design Name:    
-- Module Name:    full-adder based on multiplexors
-- Project Name:   CE-210 gate 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- REvision 0.02 - Sum and carry implemented
-- Additional Comments: 
--
----------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY fulladdermux IS
   Port ( A,B,Cin : in   STD_LOGIC;
          S, Cout : out  STD_LOGIC);
END fulladdermux;

ARCHITECTURE test OF fulladdermux IS

   COMPONENT mux4to1
   port (d : in   STD_LOGIC_VECTOR(3 downto 0);
         s : in   STD_LOGIC_VECTOR(1 downto 0);
         y : out  STD_LOGIC);
   END COMPONENT;

   COMPONENT mux8to1
   port (d : in   STD_LOGIC_VECTOR(7 downto 0);
         s : in   STD_LOGIC_VECTOR(2 downto 0);
         y : out  STD_LOGIC);
   END COMPONENT;
   
BEGIN
   S_gate    : mux4to1 port map (Cin & NOT(Cin) & NOT(Cin) & Cin, B & A, S);
   Cout_gate : mux8to1 port map ("11101000", A & B & Cin, Cout);
   
END test;
          
