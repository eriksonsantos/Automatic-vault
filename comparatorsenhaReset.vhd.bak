library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
--library proasic3;

entity ComparatorSenha is
    port(
         senhaRegistrador : in std_logic_vector(15 downto 0); -- 16 bit vector A for the comparison.
         InputSenha : in std_logic_vector(15 downto 0); -- 16 bit vector B for the comparison.
         EQUAL : out std_logic -- positive equality output signal.
    );     
end ComparatorSenha;

architecture Dataflow of ComparatorSenha is
 
begin

  EQUAL <= '1' when senhaRegistrador = InputSenha else '0';

end Dataflow;	