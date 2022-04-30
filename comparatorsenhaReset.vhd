library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
--library proasic3;

entity ComparatorSenhaReset is
    port(
         senhaResetRegistrador : in std_logic_vector(15 downto 0); -- 16 bit vector A for the comparison.
         InputSenha : in std_logic_vector(15 downto 0); -- 16 bit vector B for the comparison.
         EQUAL : out std_logic -- positive equality output signal.
    );     
end ComparatorSenhaReset;

architecture Dataflow of ComparatorSenhaReset is
 
begin

  EQUAL <= '1' when senhaResetRegistrador = InputSenha else '0';

end Dataflow;	