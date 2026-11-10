library ieee;
use ieee.std_logic_1164.ALL;

entity example is
port(a: in std_logic;
     b: out std_logic);
	  end example;
architecture s1 of example is
begin
  b <= NOT a;
end s1;