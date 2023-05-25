library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity QuadratureEncoder is
    GENERIC (len : positive := 255);
    port (
        clock        : in  std_logic;
        encoder_pulses  : out std_logic_vector(33 downto 0);
        direction    : out std_logic; 
        encoder_in_a : in  std_logic;
        encoder_in_b : in  std_logic;
        encoder_out  : out std_logic_vector(33 downto 0)
    );
end entity;

architecture Behavioral of QuadratureEncoder is
    signal a_last, b_last : std_logic;
    signal count_pulse : integer range 0 to len := 0;
    signal count : integer range 0 to len := 0;
    signal last_direction : std_logic := '0';
begin
    process (clock)
begin
    if rising_edge(clock) then
        if a_last /= encoder_in_a then
            if encoder_in_b /= a_last then
                count_pulse <= (count_pulse + 1) mod len;
                last_direction <= '1';
                if count_pulse mod 4 = 0 then
                  count <= (count + 1) mod len;
                end if;
            else
                count_pulse <= (count_pulse - 1) mod len;
                last_direction <= '0';
                if count_pulse mod 4 = 0 then
                  count <= (count - 1) mod len;
                end if;
            end if;
        elsif b_last /= encoder_in_b then
            if encoder_in_a /= b_last then
                count_pulse <= (count_pulse - 1) mod len;
                last_direction <= '0';
                if count_pulse mod 4 = 0 then
                  count <= (count - 1) mod len;
                end if;
            else
                count_pulse <= (count_pulse + 1) mod len;
                last_direction <= '1';
                if count_pulse mod 4 = 0 then
                  count <= (count + 1) mod len;
                end if;
            end if;
        end if;

        a_last <= encoder_in_a;
        b_last <= encoder_in_b;
    end if;
end process;
	
    direction <= last_direction;
    encoder_out <= std_logic_vector(to_signed(count, 34));
    -- encoder_pulses <= std_logic_vector(to_signed(count_pulse, 34));

end Behavioral;

