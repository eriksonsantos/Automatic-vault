library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
--library proasic3;

entity ComparatorErro is
    port(
         erroRegistrador : in std_logic_vector(1 downto 0); 
         EQUAL : out std_logic 
    );     
end ComparatorErro;

architecture Dataflow of ComparatorErro is

signal maxErro: STD_LOGIC_VECTOR(1 DOWNTO 0):= "11"; 
begin

  EQUAL <= '1' when erroRegistrador = maxErro else '0';

end Dataflow;	