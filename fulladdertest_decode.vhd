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
-- Additional Comments: 
--
----------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.all;

-- Note that this top-level entity name must be changed to match the name of the project
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
   
   ALIAS Ai  : STD_LOGIC is SW(9);
   ALIAS Bi  : STD_LOGIC is SW(8);
   ALIAS Cin : STD_LOGIC is SW(7); 
   ALIAS Si  : STD_LOGIC is LEDR(9);
   ALIAS Cout: STD_LOGIC is LEDR(8);
   
BEGIN

--   DUT0 : fulladder_behave port map (Ai,Bi,Cin,Si,Cout);
   
END test;
          
