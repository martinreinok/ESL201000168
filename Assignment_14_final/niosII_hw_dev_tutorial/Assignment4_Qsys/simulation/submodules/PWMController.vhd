-- library ieee;
-- use ieee.std_logic_1164.all;
-- use ieee.numeric_std.all;

-- entity PulseWidthModulator is
-- 	GENERIC(
-- 		pwmBits			:integer;
-- 		clockDivider	:positive	:= 1 
-- 	);
	
-- 	PORT(
-- 		clk	: IN 	std_logic;
-- 		rst	: IN	std_logic;
-- 		dutyCycle	: IN	std_logic_vector(pwmBits -1 downto 0);
-- 		direction	: IN	std_logic;

-- 		pwmOut	: OUT	std_logic;
-- 		pwmAOut	: OUT	std_logic;
-- 		pwmBOut	: OUT	std_logic;

-- 		--dutyOut : OUT std_logic_vector(pwmBits -1 downto 0)
-- 		dutyOut : OUT std_logic_vector(pwmBits-1 downto 0)
-- 	);
-- end entity;

-- architecture Behavioral of PulseWidthModulator is
-- 	--signal pwmCnt : integer range 0 to pwmBits - 1;
-- 	signal pwmCnt : integer range 0 to 128;
-- 	signal clkCnt : integer range 0 to clockDivider - 1;
-- 	signal pwmSig : integer range 0 to 30000000;
	
-- 	begin
-- 		clkCountProc	: process(clk, rst)
-- 		begin
-- 			if rising_edge(clk) then
-- 				if rst = '1' then
-- 					clkCnt <= 0;
-- 				else
-- 					if clkCnt < clockDivider - 1 then
-- 						clkCnt <= clkCnt + 1;
-- 					else
-- 						clkCnt <= 0;
-- 					end if;
-- 				end if;
-- 			end if;
-- 		end process;
		
-- 		pwmProc	: process(clk, rst)
-- 		begin
-- 			if rising_edge(clk) then
-- 				if rst = '1' then
-- 					pwmCnt <= 0;
-- 					pwmOut <= '0';
-- 					pwmAOut <= '0';
-- 					pwmBOut <= '0';
-- 				else
					
-- 					pwmAOut <= direction;
-- 					pwmBOut <= NOT direction;

-- 					if clockDivider = 1 or clkCnt = 0 then
-- 						pwmCnt <= pwmCnt + 1;
-- 						pwmOut <= '0';
-- 						if pwmCnt = 128 - 1 then
-- 							pwmCnt <= 0;
-- 						end if;
					
-- 						if pwmCnt < unsigned(dutyCycle) then
-- 							pwmOut <= '1';
-- 						end if;
					
-- 					end if;
-- 				end if;
-- 			end if;
			
-- 		end process;
-- 		dutyOut <= std_logic_vector(resize(unsigned(dutyCycle),pwmBits));
-- 	end Behavioral;

LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY PulseWidthModulator IS
	PORT (
	-- CLOCK and rst
	rst		: IN std_logic;
	clk	: IN std_logic;

	-- Input signals module
	frequency	: IN integer range 0 to 50000000; 	--frequency of the signal in Hz
	dutyCycle	: IN integer range 0 to 100; 		--dutyCycle of the signal in percentage
	direction			: IN std_logic; 					--rotational direction of the signal

	-- Output pwm_signal and rotation direction
	pwmOut 	: OUT std_logic;
	pwmAOut 		: OUT std_logic;
	pwmBOut			: OUT std_logic

	);
END ENTITY;

ARCHITECTURE bhv OF PulseWidthModulator IS
	
	-- Counter for the amount of clock cycles
	SIGNAL counter : integer range 0 to 50000000;

BEGIN
	

	-- Create a process which reacts to the specified signals
	PROCESS(rst, clk)
		
		-- Variables that store the amount of clock cycles to count based on the set frequency and dutyCycle
		VARIABLE cycles_per_period : integer range 0 to 50000000;
		VARIABLE on_cycles_per_period : integer range 0 to 50000000;
		
	BEGIN
		
		-- Reset everything
		IF rst = '1' THEN
		
			counter <= 0;
			
			pwmOut <= '0';
			pwmAOut <= '0';
			pwmBOut <= '0';
			
		ELSIF rising_edge(clk) THEN

			-- calculate the relevant variables at the start of each PWM cycle
			cycles_per_period := 50000000/frequency;
			on_cycles_per_period := ((50000000/frequency) * dutyCycle) / 100;
			-- Set the directional outputs
			pwmAOut <= direction;
			pwmBOut <= NOT direction;
		
			--change the PWM signal depending on the counter
			IF counter = 0 THEN
				pwmOut <= '1';
				counter <= counter + 1;

			ELSIF counter = on_cycles_per_period-1 THEN
				pwmOut <= '0';
				counter <= counter + 1;

			ELSIF counter = cycles_per_period-1 THEN
				pwmOut <= '1';
				counter <= 0;
			ELSE
				counter <= counter + 1;
			END IF;

		END IF;
		
	END PROCESS;
	

END bhv;