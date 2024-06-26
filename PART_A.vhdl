library ieee;
use ieee.std_logic_1164.all;

library work;
use work.Gates.all;

entity PART_A is
	port(In1,In0,S:in std_logic;
			Y: out std_logic);
end entity;

architecture struct of PART_A is
	signal sig1,sig2,sig3: std_logic;
	
begin	

	inst0: INVERTER port map (A=>S,Y=>sig1);
	inst1: AND_2 port map (A=>In0,B=>sig1,Y=>sig2);
	inst2: AND_2 port map (A=>In1,B=>S,Y=>sig3);
	inst3: OR_2 port map (A=>sig2,B=>sig3,Y=>Y);

end architecture;