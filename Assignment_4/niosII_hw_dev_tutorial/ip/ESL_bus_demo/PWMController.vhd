library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity PulseWidthModulator is
	GENERIC(
		pwmBits			:integer;
		clockDivider	:positive	:= 1 
	);
	
	PORT(
		clk	: IN 	std_logic;
		rst	: IN	std_logic;
		dutyCycle	: IN	std_logic_vector(pwmBits -1 downto 0);
		pwmOut	: OUT	std_logic
	);
end entity;

architecture Behavioral of PulseWidthModulator is
	signal pwmCnt : integer range 0 to pwmBits - 1;
	signal clkCnt : integer range 0 to clockDivider - 1;
	
	begin
		clkCountProc	: process(clk, rst)
		begin
			if rising_edge(clk) then
				if rst = '1' then
					clkCnt <= 0;
				else
					if clkCnt < clockDivider - 1 then
						clkCnt <= clkCnt + 1;
					else
						clkCnt <= 0;
					end if;
				end if;
			end if;
		end process;
		
		pwmProc	: process(clk, rst)
		begin
			if rising_edge(clk) then
				if rst = '1' then
					pwmCnt <= 0;
					pwmOut <= '0';
				else
					if clockDivider = 1 or clkCnt = 0 then
						pwmCnt <= pwmCnt + 1;
						pwmOut <= '0';
					
						if pwmCnt = pwmBits - 1 then
							pwmCnt <= 0;
						end if;
					
						if pwmCnt < unsigned(dutyCycle) then
							pwmOut <= '1';
						end if;
					
					end if;
				end if;
			end if;
			
		end process;
	
	end Behavioral;