LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

ENTITY senhaReset IS
	GENERIC ( N : INTEGER := 16 ) ;
	
	PORT (
		
		senhareset_id, Clk: IN STD_LOGIC ;
		QSR : OUT STD_LOGIC_VECTOR(15 DOWNTO 0) 
	) ;
	
END senhaReset ;

architecture RTL of senhaReset is
signal senha_reset: STD_LOGIC_VECTOR(15 DOWNTO 0):= "0000010011010010";
begin
	PROCESS
	BEGIN
	
		WAIT UNTIL Clk'EVENT AND Clk = '1';
		
			IF senhareset_id = '1' THEN 
				QSR <= senha_reset ;
				
			END IF ;
	END PROCESS ;

end RTL;