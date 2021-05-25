----------------------------------------------------------------------------------
-- Company:        Kettering University
-- Engineer:       Max Dreher
-- 
-- Create Date:    5/25/2021
-- Design Name:    
-- Module Name:    test bench for full-adder
-- Project Name:   CE-210 gate 
-- Target Devices: CE10-Lite Development board
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Revision 0.02 - Updated name
-- Additional Comments: 
--
----------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY fulladdertest_mux IS   
   PORT ( SW : in std_logic_vector(9 downto 7);
          LEDR : out std_logic_vector(9 downto 8) 
   );
END fulladdertest_mux;

ARCHITECTURE test OF fulladdertest_mux IS
   
	COMPONENT fulladdermux
   Port ( A,B,Cin : in   STD_LOGIC;
          S, Cout : out  STD_LOGIC
   );
   END COMPONENT;
   
   ALIAS Ai  : STD_LOGIC is SW(9);
   ALIAS Bi  : STD_LOGIC is SW(8);
   ALIAS Cin : STD_LOGIC is SW(7); 
   ALIAS Si  : STD_LOGIC is LEDR(9);
   ALIAS Cout: STD_LOGIC is LEDR(8);
   
BEGIN

   DUT0 : fulladdermux port map (Ai,Bi,Cin,Si,Cout);
   
END test;
          
