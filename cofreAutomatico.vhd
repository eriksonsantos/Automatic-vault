LIBRARY IEEE;
use ieee.std_logic_1164.all;

--BLOCO OPERACIONAL 

entity cofreAutomatico is
	GENERIC ( N : INTEGER := 16 ) ;
	port( 
		
		--ENTRADAS
		go: in std_LOGIC;
		clock: in std_logic;
		password : IN STD_LOGIC_VECTOR(15 DOWNTO 0) ;
		
		--SAIDAS BlocoControle
			A: out std_logic;
			P: out std_LOGIC
		
	    );
end cofreAutomatico;

architecture comportamento of cofreAutomatico is

--SENHA
component blocoDeControle

port( 
		
		--ENTRADAS
		go: in std_LOGIC;
		clock: in std_logic;
		password : IN STD_LOGIC_VECTOR(15 DOWNTO 0) ;
		
		--ENTRADAS BlocoOperacional
			--SAIDA COMPARADORES
			erro_eq_tres: in std_logic;
			senha_eq_S: in STD_LOGIC;
			senha_Reset_eq_S: in Std_logic;
		
		--SAIDAS BlocoOperacional
		
			--REGISTRADOR SENHA
			senha_id: out std_LOGIC;
			
			--REGISTRADOR SENHA-RESET
			senhareset_id: out STD_LOGIC ;

			--REGISTRADOR ERRO
			erro_id,erro_reset: out std_logic;
		
		--SAIDAS BlocoControle
			A: out std_logic;
			P: out std_LOGIC
		
	    );
	
end component;

component blocoOperacional
port( 
		
		--SENHA
		clock,s_id: in std_logic;
		password : IN STD_LOGIC_VECTOR(15 DOWNTO 0) ;
		--Q : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		
		--SENHA_RESET
		senhareset_id: IN STD_LOGIC ;
	
		--Comparador Senha com S
		senha_eq_S: OUT STD_LOGIC;
		
		--Comparador SenhaReset com S
		senha_Reset_eq_S: out Std_logic;
		
		--Registrador ERRO
		erro_id,erro_reset: in std_logic;
		
		--COMPARADOR ERRO COM TRES
		erro_eq_tres: out std_logic
		
	    );
end component;

signal erro_eq_tres,senha_eq_S,senha_Reset_eq_S,senha_id,senhareset_id,erro_id,erro_reset: std_LOGIC;
	
	begin

		chamarBlocoDeControle: blocoDeControle port map(go,clock,password,erro_eq_tres,senha_eq_S,senha_Reset_eq_S,senha_id,senhareset_id,erro_id,erro_reset,A,P);

	
	chamarBlocoOperacional: blocoOperacional port map(clock,senha_id,password,senhareset_id,senha_eq_S,senha_Reset_eq_S,erro_id,erro_reset,erro_eq_tres);

	
end comportamento;		
