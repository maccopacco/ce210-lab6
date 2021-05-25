library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


ENTITY fulladder_behave IS
	Port (A,B,Cin : in   STD_LOGIC;
         S, Cout : out  STD_LOGIC
   );
END fulladder_behave;

ARCHITECTURE ADD of fulladder_behAve is 

BEGIN
Cout <= (B AND Cin) OR (A AND Cin) OR (A AND B);
S <= (NOT(A) AND NOT(B) AND Cin) OR (NOT(A) AND B AND NOT(Cin)) OR (A AND NOT(B) AND NOT(Cin)) OR (A AND B AND Cin);
END ADD;