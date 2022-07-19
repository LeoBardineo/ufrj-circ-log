library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

ENTITY detector IS
    PORT (
        X   : IN STD_LOGIC; -- entrada
        CLK : IN STD_LOGIC; -- clock
        RST : IN STD_LOGIC; -- reset
        Z   : OUT STD_LOGIC -- saída
    );
END detector;

architecture behaviour of detector is
    type state_type is (s0, s1, s2, s3, s4);-- estados enumerados
    signal state : state_type;              -- estado atual

begin
    process(CLK, RST)
    begin
        if RST = '1' then
            state <= s0;
        elsif (rising_edge(CLK)) then
            case state is
                when s0 =>
                    if X = '1' then state <= s1;
                    else state <= s0;
                    end if;
                when s1 =>
                    if X = '1' then state <= s1;
                    else state <= s2;
                    end if;
                when s2 =>
                    if X = '1' then state <= s3;
                    else state <= s0;
                    end if;
                when s3 =>
                    if X = '1' then state <= s4;
                    else state <= s2;
                    end if;
                when s4 =>
                    if X = '1' then state <= s1;
                    else state <= s2;
                    end if;
            end case;
        end if;
    end process;

    process (state)
    begin
        case state is
            when s0 => Z <= '0';
            when s1 => Z <= '0';
            when s2 => Z <= '0';
            when s3 => Z <= '0';
            when s4 => Z <= '1';
        end case;
    end process;
end behaviour;