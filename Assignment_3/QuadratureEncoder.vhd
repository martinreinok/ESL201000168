library ieee;
use ieee.std_logic_1164.all;

entity QuadratureEncoder is
    port (
        clock        : in  std_logic;
        encoder_out  : out std_logic;
        encoder_in_a : in  std_logic;
        encoder_in_b : in  std_logic
    );
end entity;

architecture Behavioral of QuadratureEncoder is
    signal a_last, b_last : std_logic;
	-- What should the range be??
    signal count : integer range -255 to 255 := 0;
begin
    process (clock)
    begin
        if rising_edge(clock) then
            if a_last /= encoder_in_a then
                if encoder_in_b /= a_last then
                    count <= count + 1;
                else
                    count <= count - 1;
                end if;
            elsif b_last /= encoder_in_b then
                if encoder_in_a /= b_last then
                    count <= count - 1;
                else
                    count <= count + 1;
                end if;
            end if;
            a_last <= encoder_in_a;
            b_last <= encoder_in_b;
        end if;
    end process;
    
    encoder_out <= '1' when count > 0 else '0';
    
end Behavioral;
