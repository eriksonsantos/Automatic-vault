LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

ENTITY erro IS
	GENERIC ( N : INTEGER := 2 ) ;
	
	PORT (
		inputErro : IN STD_LOGIC_VECTOR(N-1 DOWNTO 0):="00" ;
		erro_id,erro_reset, Clk: IN STD_LOGIC ;
		QRR : OUT STD_LOGIC_VECTOR(N-1 DOWNTO 0) ) ;
	
END erro ;

architecture RTL of erro is
begin
	PROCESS
	BEGIN
		WAIT UNTIL Clk'EVENT AND Clk = '1' ;
			IF erro_id = '1' THEN 
				QRR <= inputErro;
			elsif erro_reset = '1' then
				QRR<= "00";
			END IF ;
	END PROCESS ;

end RTL;