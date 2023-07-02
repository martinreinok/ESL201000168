library IEEE;
	use IEEE.std_logic_1164.all;
	use IEEE.numeric_std.all;

entity QuadratureEncoder is
	generic (
		maxValue : integer := 16000
	);
	port (
		clock 		: in std_logic;
		encoder_in_a		 	: in std_logic;
		encoder_in_b			: in std_logic;
		reset 		: in std_logic;
		encoder_out	: out std_logic_vector(15 downto 0)
	);
end QuadratureEncoder;

architecture imp of QuadratureEncoder is
	function gray_code_inc(	prev_input 	: std_logic_vector(1 downto 0);
							new_input 	: std_logic_vector(1 downto 0)) return boolean is
	begin
		case prev_input is
			when "00" => return new_input = "01";
			when "01" => return new_input = "11";
			when "11" => return new_input = "10";
			when "10" => return new_input = "00";
			when others => return true;
		end case;
	end function;

	signal ab_input : std_logic_vector(1 downto 0);

	signal debounced_ab : std_logic_vector(1 downto 0);

	signal prev_ab : std_logic_vector(1 downto 0);

	signal num_position : unsigned(15 downto 0);

begin
	ab_input <= encoder_in_a & encoder_in_b;

	encoder_out <= std_logic_vector(num_position);

	debounce : process(clock, reset) 
	begin
		if reset = '1' then
			debounced_ab <= (others => '0');
		elsif rising_edge(clock) then
			debounced_ab <= ab_input;
		end if;
	end process;

	check_rotation : process(clock, reset)
	begin
		if reset = '1' then
			prev_ab <= (others => '0');
			num_position <= to_unsigned(0, num_position'length);
		elsif rising_edge(clock) then
			if prev_ab /= debounced_ab then
				if gray_code_inc(debounced_ab, prev_ab) then
					if(num_position < to_unsigned(maxValue, num_position'length)) then
						num_position <= num_position + 1;
					else
						num_position <= to_unsigned(0, num_position'length);
					end if;
				else
					if(num_position > 0) then
						num_position <= num_position - 1;
					else
						num_position <= to_unsigned(maxValue - 1, num_position'length);
					end if;
				end if;
			end if;
			prev_ab <= debounced_ab;
		end if;
	end process;
end architecture;

