
library ieee;
use ieee.std_logic_1164.all;

entity esl_demonstrator is
	port (
	-- CLOCK
	CLOCK_50	: in std_logic;
	-- LEDs are only available on the DE0 Nano board.
	LED		: out std_logic_vector(7 downto 0);
	KEY		: in std_logic_vector(1 downto 0);
	SW			: in std_logic_vector(3 downto 0);

	-- GPIO_0, GPIO_0 connect to GPIO Default
	GPIO_0		: inout 	std_logic_vector(15 downto 0);
	GPIO_0_IN	: in    	std_logic_vector(1 downto 0);
	direction	: out		std_logic;	-- not orignal

	-- GPIO_1, GPIO_1 connect to GPIO Default
	GPIO_1		: in std_logic_vector(7 downto 0); -- not original
	GPIO_1_OUT  : out		std_logic; -- not original
	GPIO_DutyOut : out std_logic_vector(7 downto 0) -- not original
	);
end entity;


architecture behavior of esl_demonstrator is
	signal placeholder : std_logic_vector(10 downto 0);
begin

	pwm : entity work.PulseWidthModulator
		GENERIC map (
		pwmBits => 8,
		clockDivider => 1)
		
		port map (
		clk         => CLOCK_50,
		rst			=> '0',
		dutyCycle   => GPIO_1,
		pwmOut  => GPIO_1_OUT,
		dutyOut => GPIO_DutyOut
		);
		
end architecture;
