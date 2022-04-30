LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
USE ieee.std_logic_signed.all ;


ENTITY somadorErro IS

	PORT ( 
		  X : IN STD_LOGIC_VECTOR(1 DOWNTO 0) ;
		  
		  S : OUT STD_LOGIC_VECTOR(1 DOWNTO 0) 
	) ;
		
END somadorErro ;

ARCHITECTURE Behavior OF somadorErro IS

signal Y: STD_LOGIC_VECTOR(1 DOWNTO 0):= "01";

BEGIN

	S <= X + Y ;

END Behavior ;