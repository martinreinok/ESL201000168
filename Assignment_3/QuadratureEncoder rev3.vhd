library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity QuadratureEncoder is
    GENERIC (
	len : integer := 20000;	-- Length of maximum encoder counting; 
	debounce_time	: positive := 3;	-- Amount of clockcycles that the program waits before receiving new values
	set_origin_debounce_time : INTEGER := 500_000);     
    port (
        clock        : in  std_logic;
	reset		: in std_logic;
        direction    : out std_logic; 
        encoder_in_a : in  std_logic;
        encoder_in_b : in  std_logic;
        encoder_out  : out std_logic_vector(15 downto 0)
    );
end entity;

architecture Behavioral of QuadratureEncoder is
	SIGNAL a_new, b_new, a_last, b_last : STD_LOGIC := '0';
	SIGNAL debounceCNT : INTEGER RANGE 0 to debounce_time;
	SIGNAL count : integer RANGE 0 to len;
	SIGNAL new_direction : STD_LOGIC;
	
begin
	debounce : process(clock)
	begin
		a_new <= encoder_in_a;
		b_new <= encoder_in_b;
		if rising_edge(clock) then
			if(debounceCNT < debounce_time) then
				debounceCNT <= debounceCNT + 1;
			else
				debounceCNT <= 0;
				
			end if;
		end if;
		
	end process; 

	encodercount :process(clock, reset)
	begin
		

		if(reset = '1') then
		count <= len / 2;
		a_last <= '0';
		b_last <= '0';
		
		elsif (debounceCNT = 0) then
			
			if(((a_last XOR a_new) OR (b_last XOR b_new)) = '1' ) then
				new_direction <= b_last XOR a_new;

				if((b_last XOR a_new) = '1') then
					if(count < len -1) then
						count <= count + 1;
					else
						count <= 0;
					end if;
				else
					if(count > 0) then
						count <= count - 1;
					else
						count <= len;
					end if;
				end if;
			end if;
			a_last <= a_new;
			b_last <= b_new;
		end if;
	end process;
	direction <= new_direction;
	encoder_out <= std_logic_vector(to_signed(count, 16));
end Behavioral;