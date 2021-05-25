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
-- Revision 0.02 - Renames
-- Revision 0.03 - Logic added
-- Additional Comments: 
--
----------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY fulladdertest_decode IS   
   PORT ( SW : in std_logic_vector(9 downto 7);
          LEDR : out std_logic_vector(9 downto 8) 
   );
END fulladdertest_decode;

ARCHITECTURE test OF fulladdertest_decode IS

   COMPONENT decoder3to8
      Port ( d : in   STD_LOGIC_VECTOR(2 downto 0);
				 y : out  STD_LOGIC_VECTOR(7 downto 0)
		);
   END COMPONENT;
	
	COMPONENT or_4 is
		Port ( a : in STD_LOGIC;
				 b : in STD_LOGIC;
				 c : in STD_LOGIC;
				 d : in STD_LOGIC;
				 y : out STD_LOGIC
	   );
	END COMPONENT;
   
   ALIAS Ai  : STD_LOGIC is SW(9);
   ALIAS Bi  : STD_LOGIC is SW(8);
   ALIAS Cin : STD_LOGIC is SW(7); 
   ALIAS Si  : STD_LOGIC is LEDR(9);
   ALIAS Cout: STD_LOGIC is LEDR(8);
	
	SIGNAL decode_output : STD_LOGIC_VECTOR(7 downto 0);
   
BEGIN

   DUT0 : decoder3to8 port map (Ai & Bi & Cin, decode_output);
	DUT1 : or_4 port map (decode_output(1), decode_output(2), decode_output(4), decode_output(7), Si);
	DUT2 : or_4 port map (decode_output(3), decode_output(5), decode_output(6), decode_output(7), Cout);
   
END test;
          
