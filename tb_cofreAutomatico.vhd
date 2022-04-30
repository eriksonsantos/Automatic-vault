library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity tb_cofreAutomatico is
GENERIC ( N : INTEGER := 16 ) ;
	
end tb_cofreAutomatico;

architecture cofre of tb_cofreAutomatico is

component cofreAutomatico is
	port( 
		
		--ENTRADAS
		go: in std_LOGIC;
		clock: in std_logic;
		password : IN STD_LOGIC_VECTOR(15 DOWNTO 0) ;
		
		--SAIDAS BlocoControle
			A: out std_logic;
			P: out std_LOGIC
		

	    );

end component ;

signal sinal_clk:std_logic;
signal sinal_s:std_logic_vector(N-1 DOWNTO 0);

signal sinalgo: std_LOGIC;
signal sinalA: std_LOGIC;
signal sinalP: std_LOGIC;
constant clk_period : time := 2 ns;

begin

process
begin
	sinal_clk <= '1';
	wait for clk_period;
	sinal_clk <= '0';
	wait for clk_period;
	
end process;

instancia_senha: cofreAutomatico port map(

										password=>sinal_s
										,clock=>sinal_clk
										,go=>sinalgo,A=>sinalA
										,P =>sinalP
										
										);
--sinal_s <= "1010010111001010";
--sinalgo <= '0', '1' after 60 ns --Registrou a senha
--, '0' after 65 ns, '1' after 120 ns -- Verificar a senha e Abriu
--,'0' after 125 ns;
										
--sinal_s <= "1010010111001010";
--sinalgo <= '0', '1' after 60 ns --Registrou a senha
--, '0' after 65 ns, '1' after 120 ns -- Verificar a senha e Abriu
--,'0' after 125 ns,'1' after 300 ns,'0' after 304 ns; --Fechar o cofre

--sinal_s <= "1010010111001010", "1011110111001010" after 100 ns;
--sinalgo <= '0', '1' after 60 ns --Registrou a senha
--, '0' after 65 ns, '1' after 115 ns -- Verificar a senha e errou 1 vez
--,'0' after 120 ns;

--sinal_s <= "1010010111001010", "1011110111001010" after 100 ns;
--sinalgo <= '0', '1' after 60 ns --Registrou a senha
--, '0' after 65 ns, '1' after 115 ns -- Verificar a senha e errou 1 vez
--,'0' after 119 ns, '1' after 190 ns -- Verificar a senha e errou 2 vez
--,'0' after 194 ns;

--sinal_s <= "1010010111001010", "1011110111001010" after 100 ns;
--sinalgo <= '0', '1' after 60 ns --Registrou a senha
--, '0' after 65 ns, '1' after 115 ns -- Verificar a senha e errou 1 vez
--,'0' after 119 ns, '1' after 190 ns -- Verificar a senha e errou 2 vez
--,'0' after 194 ns, '1' after 290 ns -- Verificar a senha e errou 3 vez
--,'0' after 294 ns;

sinal_s <= "1010010111001010", "1011110111001010" after 100 ns, "1010010111001010" after 280 ns; --Reiniciou a SENHA
sinalgo <= '0', '1' after 60 ns --Registrou a senha
, '0' after 65 ns, '1' after 115 ns -- Verificar a senha e errou 1 vez
,'0' after 119 ns, '1' after 190 ns -- Verificar a senha e errou 2 vez
,'0' after 194 ns, '1' after 290 ns -- Verificar a senha e acertou
,'0' after 295 ns;

--sinal_s <= "1010010111001010", "1011110111001010" after 100 ns, "0000010011010010" after 340 ns, "0000010011010010" after 400 ns;
--Redefeniu a senha 
--sinalgo <= '0', '1' after 60 ns --Registrou a senha
--, '0' after 65 ns, '1' after 115 ns -- Verificar a senha e errou 1 vez
--,'0' after 119 ns, '1' after 190 ns -- Verificar a senha e errou 2 vez
--,'0' after 194 ns, '1' after 290 ns -- Verificar a senha e errou 3 vez
--,'0' after 295 ns, '1' after 410 ns -- Registrou a nova senha
--,'0' after 415 ns, '1' after 430 ns -- Verificiou e acertou a senha
--,'0' after 435 ns;

--sinal_s <= "1010010111001010", "1011110111001010" after 100 ns, "0000010011010010" after 340 ns, "1100010011010010" after 380 ns, "1111110011010010" after 420 ns;
--Redefeniu a senha 
--sinalgo <= '0', '1' after 60 ns --Registrou a senha
--, '0' after 65 ns, '1' after 115 ns -- Verificar a senha e errou 1 vez
--,'0' after 119 ns, '1' after 190 ns -- Verificar a senha e errou 2 vez
--,'0' after 194 ns, '1' after 290 ns -- Verificar a senha e errou 3 vez
--,'0' after 295 ns, '1' after 390 ns -- Registrou a nova senha
--,'0' after 395 ns, '1' after 430 ns -- Verificiou a senha e errou
--,'0' after 435 ns;


end cofre;