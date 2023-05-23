library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity QuadratureEncoder is
	GENERIC (len : positive := 255);
    port (
        clock        : in  std_logic;
	reset	     : in  std_logic;
        encoder_out  : out std_logic_vector(31 downto 0);
	direction    : out std_logic; 
        encoder_in_a : in  std_logic;
        encoder_in_b : in  std_logic
    );
end entity;

architecture Behavioral of QuadratureEncoder is
    signal a_last, b_last : std_logic;
	-- What should the range be??
    signal count : integer range 0 to len := 0; -- Make generic 
    signal count_encoder : integer range 0 to len := 0; -- Every 4 encoder pulses 
	signal dir : std_logic;

begin
    process (clock, reset)
    begin
	if (reset = '1') then
	   count <= 0;

        elsif rising_edge(clock) then
            if a_last /= encoder_in_a then
                if encoder_in_b /= a_last then
							if count >= len - 1 then
								count <= 0;
							else 
							  count <= count + 1;
						   end if;
							
						  dir <= '1';
                else
							if count <= 0 then
								count <= len - 1;
							else 
							  count <= count - 1;
						   end if;  
						  dir <= '0';
                end if;
            elsif b_last /= encoder_in_b then
                if encoder_in_a /= b_last then
                    if count <= 0 then
								count <= len - 1;
							else 
							  count <= count - 1;
						   end if;
							
						  dir <= '0';
                else
                    if count >= len - 1 then
								count <= 0;
							else 
							  count <= count + 1;
						   end if;
						  dir <= '1';
                end if;
            end if;
            a_last <= encoder_in_a;
            b_last <= encoder_in_b;
        end if;
	if (count mod 4 = 0) then
	if (dir = '1') then
	    count_encoder <= count_encoder + 1;
	end if;
	if (dir = '0') then 
	    count_encoder <= count_encoder - 1;
	end if;
	end if;
    end process;
    
    	encoder_out <= std_logic_vector(to_signed(count_encoder, 32));
	direction <= dir;
    
end Behavioral;
