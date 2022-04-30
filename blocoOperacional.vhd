LIBRARY IEEE;
use ieee.std_logic_1164.all;

--BLOCO OPERACIONAL 

entity blocoOperacional is
	GENERIC ( N : INTEGER := 16 ) ;
	port( 
		
		--SENHA
		clock,s_id: in std_logic;
		password : IN STD_LOGIC_VECTOR(15 DOWNTO 0) ;
		
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
end blocoOperacional;

architecture comportamento of blocoOperacional is

--Registrador SENHA
component senha

 PORT (
		
		S : IN STD_LOGIC_VECTOR(N-1 DOWNTO 0) ;
		senha_id, Clk: IN STD_LOGIC ;
		Q : OUT STD_LOGIC_VECTOR(N-1 DOWNTO 0) 
  ) ;
	
end component;

--Registrador SENHA_RESET

component senhaReset

PORT (
	
		senhareset_id, Clk: IN STD_LOGIC ;
		QSR : OUT STD_LOGIC_VECTOR(N-1 DOWNTO 0) ) ;
	
end component;

--Comparar Senha com a Entrada S
component ComparatorSenha
port(
         senhaRegistrador : in std_logic_vector(15 downto 0);
         InputSenha : in std_logic_vector(15 downto 0); 
         EQUAL : out std_logic 
    ); 
end component;

--Comparar SenhaReset com a Entrada S
component ComparatorSenhaReset
port(
         senhaResetRegistrador : in std_logic_vector(15 downto 0); 
         InputSenha : in std_logic_vector(15 downto 0); 
         EQUAL : out std_logic
    );   
end component;

--Registrador ERRO
component erro
port(
         inputErro : IN STD_LOGIC_VECTOR(1 DOWNTO 0) ;
			erro_id,erro_reset, Clk: IN STD_LOGIC ;
			QRR : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
    );   
end component;

--Somador ERRO
component somadorErro
PORT ( 
		  X : IN STD_LOGIC_VECTOR(1 DOWNTO 0) ;
		  
		  S : OUT STD_LOGIC_VECTOR(1 DOWNTO 0) 
	) ;  
end component;

--Comparador ERRO com 3
component ComparatorErro
port(
         erroRegistrador : in std_logic_vector(1 downto 0); 
         EQUAL : out std_logic 
    );   
end component;

signal auxSenha: std_logic_vector(15 downto 0);
signal auxSenhaReset: std_logic_vector(15 downto 0);
signal auxErro: std_logic_vector(1 downto 0);
signal inputErro :STD_LOGIC_VECTOR(1 DOWNTO 0) ;

begin
	
		registrarSenhaReset: senhaReset port map(senhareset_id,clock,auxSenhaReset);
		
		registrarSenha: senha port map(password,s_id,clock,auxSenha);
		
		registrarErro: erro port map(inputErro,erro_id,erro_reset,clock,auxErro);
		
		somadorRegistradorErro: somadorErro port map(auxErro,inputErro);
		
		ComparatorRegistradorErro : ComparatorErro port map(auxErro,erro_eq_tres);
		
		comparar1:ComparatorSenha port map(auxSenha,password,senha_eq_S);
		
		comparar2:ComparatorSenhaReset port map(auxSenhaReset,password,senha_Reset_eq_S);
	
	
end comportamento;		
