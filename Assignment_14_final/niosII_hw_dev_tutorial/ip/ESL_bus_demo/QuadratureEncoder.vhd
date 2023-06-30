library IEEE;
	use IEEE.std_logic_1164.all;
	use IEEE.numeric_std.all;

entity QuadratureEncoder is
	generic (
		maxValue 		: integer := 16000	-- Holds value to limit the maximum counting value. 
	);
	port (
		clock 			: in std_logic;		-- Clock input
		reset 			: in std_logic;		-- Reset input
		encoder_in_a	: in std_logic;		-- Encoder input A
		encoder_in_b	: in std_logic;		-- Encoder input B
		encoder_out		: out std_logic_vector(15 downto 0)	-- Output of the quadrature counter
	);
end QuadratureEncoder;

architecture bhv of QuadratureEncoder is

	-- Function to give a graycode incrementing output
	function incrGrayCode(	prevGrayCode 	: std_logic_vector(1 downto 0);
							nextGrayCode 	: std_logic_vector(1 downto 0)) return boolean is
	begin
		case prevGrayCode is
			when "00" => return nextGrayCode = "01";
			when "01" => return nextGrayCode = "11";
			when "11" => return nextGrayCode = "10";
			when "10" => return nextGrayCode = "00";
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
				if incrGrayCode(debounced_ab, prev_ab) then
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

