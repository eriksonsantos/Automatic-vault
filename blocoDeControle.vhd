LIBRARY IEEE;
use ieee.std_logic_1164.all;

--BLOCO CONTROLE 

entity blocoDeControle is
	GENERIC ( N : INTEGER := 16 ) ;
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
end blocoDeControle;

architecture comportamento of blocoDeControle is

--SENHA
component blocoOperacional

port( 
		
		--SENHA
		clock,s_id: in std_logic;
		password : IN STD_LOGIC_VECTOR(15 DOWNTO 0) ;
		Q : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		
		--SENHA_RESET
		senhareset_id: IN STD_LOGIC ;
		QSR : OUT STD_LOGIC_VECTOR(N-1 DOWNTO 0);
	
		--Comparador Senha com S
		senha_eq_S: OUT STD_LOGIC;
		
		--Comparador SenhaReset com S
		senha_Reset_eq_S: out Std_logic;
		
		--Registrador ERRO
		erro_id,erro_reset: in std_logic;
		QRR: Out  STD_LOGIC_VECTOR(1 DOWNTO 0);
		
		--COMPARADOR ERRO COM TRES
		erro_eq_tres: out std_logic
		
	    );
	
end component;


signal start: std_LOGIC:='0';
	
	type st is(estado0,inicio,registrar,aguardar,verificar,erro,abrir,reiniciar);
	signal estado: st;
	
begin

	my_process : process(clock)
	begin
	
		if start = '0' then
			estado<= estado0;
			start <= '1';
		elsif(clock'EVENT and clock = '1') then
			case estado is
				
				when estado0=>
						senhareset_id <= '1';
						erro_reset <= '1';
											
						P <= '0';
						A <= '0';
						estado<= inicio;
						
				when inicio=>
					A<= '0';
					senhareset_id <= '0';
					erro_reset <= '0';
					senha_id <= '0';
					senhareset_id <= '0';

					if go = '0' then
						estado<= inicio;
					elsif go = '1' then
						estado<= registrar;
					end if;
					
				when registrar=>
					senha_id <= '1';
				
					estado <= aguardar;
					
				when aguardar=>
					senha_id <= '0';
					
					P <= '0';
					A <= '0';
								
					if go = '0' then
						estado <= aguardar;
					elsif go = '1' then
						estado <= verificar;
					end if;
					
				when verificar=>
				
					if senha_eq_S = '1' then
						estado <= abrir;
					elsif senha_eq_S = '0' then
						estado <= erro;
					end if;
					
				when erro=>
					A <= '1';
					erro_id <= '1';
				
					if erro_eq_tres = '0' then
						estado <= aguardar;
					elsif erro_eq_tres = '1' then
						estado <= reiniciar;
					end if;
					
				when abrir=>
					P <= '1';
					erro_reset <= '1';
				
					if go = '1' then
						estado <= aguardar;
					elsif go = '0' then
						estado <= abrir;
					end if;
					
				when reiniciar=>
					P <= '0';
					erro_id <= '0';
					erro_reset <= '1';
					A<= '1';
				
					if senha_Reset_eq_S = '1' then
						estado <= inicio;
					elsif senha_Reset_eq_S = '0' then
						estado <= reiniciar;
					end if;
			end case;
		end if;
	end process my_process;
	
end comportamento;		
