library ieee;
use ieee.std_logic_1164.all;

entity esl_demonstrator is
    port (
        -- CLOCK
        CLOCK_50        : in std_logic;
        -- LEDs are only available on the DE0 Nano board.
        LED             : out std_logic_vector(7 downto 0);
        KEY             : in std_logic_vector(1 downto 0);
        SW              : in std_logic_vector(3 downto 0);

        -- GPIO_0, GPIO_0 connect to GPIO Default
        GPIO_0          : inout std_logic_vector(15 downto 0);
        GPIO_0_IN       : in std_logic_vector(1 downto 0);
        direction       : out std_logic;    -- not original

        -- GPIO_1, GPIO_1 connect to GPIO Default
        GPIO_1          : in std_logic_vector(7 downto 0); -- not original
        GPIO_1_OUT      : out std_logic; -- not original
        GPIO_DutyOut    : out std_logic_vector(7 downto 0) -- not original
    );
end entity;


architecture behavior of esl_demonstrator is
    signal placeholder : std_logic_vector(10 downto 0);

    -- HomingSequence entity declaration
    entity HomingSequence is
        generic (
            pwmBits             : integer;
            clockDivider        : positive := 1;
            homing_dutycycle    : integer := 20;
            encoder_read_frequency : integer := 5000000 -- Frequency at which the encoder is read
        );
        port (
            clk                 : in std_logic;
            reset               : in std_logic;
            encoder_value       : in std_logic_vector(15 downto 0);
            homing_active       : in std_logic;
            pwm_dutycycle       : out std_logic_vector(pwmBits - 1 downto 0);
            pwm_direction       : out std_logic
        );
    end entity HomingSequence;

    -- Signal declarations for the HomingSequence
    signal clk_homing      : std_logic;
    signal reset_homing    : std_logic;
    signal encoder_value   : std_logic_vector(15 downto 0);
    signal homing_active   : std_logic;
    signal pwm_dutycycle   : std_logic_vector(7 downto 0);
    signal pwm_direction   : std_logic;

begin
    encoder : entity work.QuadratureEncoder
        GENERIC map (len => 20000)
        port map (
            -- Map your encoder here to the I/O
            clock           => CLOCK_50,
            reset           => '0',
            encoder_out     => GPIO_0,
            encoder_in_a    => GPIO_0_IN(0),
            encoder_in_b    => GPIO_0_IN(1),    
            direction       => direction
        );

    pwm : entity work.PulseWidthModulator
        GENERIC map (
            pwmBits => 8,
            clockDivider => 1
        )
        port map (
            clk         => CLOCK_50,
            rst         => '0',
            dutyCycle   => GPIO_1,
            pwmOut      => GPIO_1_OUT,
            dutyOut     => GPIO_DutyOut
        );

    -- Instantiate the HomingSequence entity
    homing : HomingSequence
        generic map (
            pwmBits => 8,
            clockDivider => 1,
            homing_dutycycle => 20,
            encoder_read_frequency => 5000000
        )
        port map (
            clk                 => clk_homing,
            reset               => reset_homing,
            encoder_value       => encoder_value,
            homing_active       => homing_active,
            pwm_dutycycle       => pwm_dutycycle,
            pwm_direction       => pwm_direction
        );

    clk_homing      <= CLOCK_50;
    reset_homing    <= '1' when GPIO_0_IN(0) = '1' else '0'; -- Reset homing
    encoder_value   <= GPIO_0;
    homing_active   <= '1' when GPIO_0_IN(0) = '1' else '0'; -- Activate homing

end architecture;
