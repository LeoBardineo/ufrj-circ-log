library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

ENTITY contador_binario IS
    PORT (
        CLK, CLR, UP_DN, HOLD: IN STD_LOGIC;
        Q : OUT STD_LOGIC_VECTOR(3 downto 0);
        RPO : OUT STD_LOGIC
    );
END contador_binario;

architecture comportamental of contador_binario is
begin

end comportamental;