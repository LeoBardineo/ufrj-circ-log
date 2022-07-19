library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity MooreMachine_TB is
  port (
    keys: in STD_LOGIC_VECTOR(2 downto 0);
    clock: in STD_LOGIC;
    led: out STD_LOGIC
  );
end MooreMachine_TB;

architecture test of MooreMachine_TB is
begin
    component detector
      PORT (
        X   : IN STD_LOGIC;
        CLK : IN STD_LOGIC;
        RST : IN STD_LOGIC;
        Z   : OUT STD_LOGIC
      );
    end component;
    moore: detector port map(
        X   => keys(0),
        CLK => clock,
        RST => keys(1),
        Z   => led
    );

    process
    begin

    end process;
end test;