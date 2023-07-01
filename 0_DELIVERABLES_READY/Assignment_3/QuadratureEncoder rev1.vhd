library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity QuadratureEncoder is
	GENERIC (len : positive := 255);
    port (
        clock        : in  std_logic;
        encoder_out  : out std_logic_vector(33 downto 0);
		  direction	 	: out	std_logic; 
        encoder_in_a : in  std_logic;
        encoder_in_b : in  std_logic
    );
end entity;

architecture Behavioral of QuadratureEncoder is
    signal a_last, b_last : std_logic;
	-- What should the range be??
    signal count : integer range 0 to len := 0; -- Make generic 
begin
    process (clock)
    begin
        if rising_edge(clock) then
            if a_last /= encoder_in_a then
                if encoder_in_b /= a_last then
							if count >= 255 then
								count <= 0;
							else 
							  count <= count + 1;
						   end if;
							
						  direction <= '1';
                else
							if count <= 0 then
								count <= 255;
							else 
							  count <= count - 1;
						   end if;  
						  direction <= '0';
                end if;
            elsif b_last /= encoder_in_b then
                if encoder_in_a /= b_last then
                    if count <= 0 then
								count <= 255;
							else 
							  count <= count - 1;
						   end if;
							
						  direction <= '0';
                else
                    if count >= 255 then
								count <= 0;
							else 
							  count <= count + 1;
						   end if;
						  direction <= '1';
                end if;
            end if;
            a_last <= encoder_in_a;
            b_last <= encoder_in_b;
        end if;
    end process;
    
    encoder_out <= std_logic_vector(to_signed(count, 34));
    
end Behavioral;
