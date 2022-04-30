LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

ENTITY senha IS
	GENERIC ( N : INTEGER := 16 ) ;
	
	PORT (
		S : IN STD_LOGIC_VECTOR(N-1 DOWNTO 0) ;
		senha_id, Clk: IN STD_LOGIC ;
		Q : OUT STD_LOGIC_VECTOR(N-1 DOWNTO 0) ) ;
	
END senha ;

architecture RTL of senha is
begin
	PROCESS
	BEGIN
		WAIT UNTIL Clk'EVENT AND Clk = '1' ;
			IF senha_id = '1' THEN 
				Q <= S ;
			END IF ;
	END PROCESS ;

end RTL;