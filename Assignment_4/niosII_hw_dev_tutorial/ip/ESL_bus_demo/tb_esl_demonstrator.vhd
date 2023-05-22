library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_esl_demonstrator is
	GENERIC (n : positive := 100;
				n_2: positive := 200);
end entity;

architecture testbench of tb_esl_demonstrator is
  -- DUT
  signal dut_clock_50 : std_logic;
  signal LED         : std_logic_vector(7 downto 0);
  signal KEY         : std_logic_vector(1 downto 0);
  signal SW          : std_logic_vector(3 downto 0);
  signal GPIO_0      : std_logic_vector(33 downto 0);
  signal GPIO_0_IN   : std_logic_vector(1 downto 0);
  signal direction	: std_logic;
  signal GPIO_1   : std_logic_vector(7 downto 0);
  signal GPIO_1_IN   : std_logic_vector(1 downto 0);
  signal GPIO_1_OUT  : std_logic; 

  -- Create A and B signals for GPIO_0
  signal gpio_0_a    : std_logic;
  signal gpio_0_b    : std_logic;
  

begin
  -- Instantiate DUT
  DUT_inst : entity work.esl_demonstrator
    port map (
      CLOCK_50  => dut_clock_50,
      LED       => LED,
      KEY       => KEY,
      SW        => SW,
      GPIO_0    => GPIO_0,
      GPIO_0_IN => GPIO_0_IN,
		direction => direction,
      GPIO_1    => GPIO_1,
      --GPIO_1_IN => GPIO_1_IN,
		GPIO_1_OUT => GPIO_1_OUT
    );

  -- Connect A and B signals to GPIO_0
  GPIO_0_IN(0) <= gpio_0_a;
  GPIO_0_IN(1) <= gpio_0_b;
  
  -- Create clock signal
  process
	  begin
		 dut_clock_50 <= '0';
		 wait for 10 ns;
		 dut_clock_50 <= '1';
		 wait for 10 ns;
  end process;
  
  encoderTest	: PROCESS
  begin
	  FOR i IN 0 to 10 LOOP
		  -- Create Encoder A signal
			 gpio_0_a  <= '1';
			 wait for 40 ns;
			 gpio_0_b  <= '1';
			 wait for 40 ns;
			 gpio_0_a <= '0';
			 wait for 40 ns;
			 gpio_0_b <= '0';
			 wait for 40 ns;
	  END LOOP;
	  wait for 100 ns;
	  
	  FOR i IN 0 to 20 LOOP
			 gpio_0_a  <= '0';
			 wait for 40 ns;
			 gpio_0_b  <= '1';
			 wait for 40 ns;
			 gpio_0_a <= '1';
			 wait for 40 ns;
			 gpio_0_b <= '0';
			 wait for 40 ns;
		 END LOOP;
	END PROCESS;
	
	PWMTest		:	PROCESS  
  begin
  
		FOR i IN 0 to 10 LOOP
			 GPIO_1 <= std_logic_vector(to_unsigned(i*5, 8));
			 wait for 2560 ns;
			 --wait for i * 20 ns;
		END LOOP;
	  wait for 100 ns;
	  
	END PROCESS;

end architecture;
