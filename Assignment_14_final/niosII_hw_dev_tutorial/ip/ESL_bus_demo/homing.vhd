-- This code implements homing sequence

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity HomingSequence is
    generic(
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

architecture Behavioral of HomingSequence is
    type State is (START, MOVE_LEFT, MOVE_RIGHT, HOMING_COMPLETE);
    signal current_state : State;
    signal min_value, max_value : integer;
    signal previous_value : integer;
    constant CLOCKWISE : std_logic := '1';
    constant COUNTERCLOCKWISE : std_logic := '0';
    signal clock_delay_counter : integer := 0;
    
begin
    process (clk, reset)
    begin
        if reset = '1' then
            -- Reset all signals and variables to their initial values
            current_state <= START;
            pwm_direction <= CLOCKWISE;
            pwm_dutycycle <= (OTHERS => '0');
            min_value <= 0;
            max_value <= 0;
            previous_value <= 0;
            clock_delay_counter <= 0;

        elsif rising_edge(clk) then
            case current_state is
                when START =>
                    -- Initialize the minimum and maximum values with the current encoder value
                    min_value <= encoder_value;
                    max_value <= encoder_value;
                    previous_value <= encoder_value;
                    current_state <= MOVE_LEFT;

                when MOVE_LEFT =>
                    if clock_delay_counter = 0 then
                        if encoder_value /= previous_value then
                            -- If the encoder value changes, update the previous value and set the PWM parameters for moving clockwise
                            previous_value <= encoder_value;
                            pwm_direction <= CLOCKWISE;
                            pwm_dutycycle <= std_logic_vector(to_unsigned(homing_dutycycle, pwmBits));
                        elsif (encoder_value >= previous_value && clock_delay_counter = 0) then
                            -- If the encoder value does not change, update the previous value, stop motor and move to next stage
                            previous_value <= encoder_value;
                            pwm_dutycycle <= (OTHERS => '0');
                            min_value <= encoder_value;
                            current_state <= MOVE_RIGHT;
                        end if;
                    else 
                        if clock_delay_counter >= encoder_read_frequency then
                            -- If the delay counter reaches the read frequency, reset it to zero
                            clock_delay_counter <= 0;
                        else
                            -- Increment the delay counter
                            clock_delay_counter <= clock_delay_counter + 1;
                        end if;
                    end if;

                when MOVE_RIGHT =>
                    if clock_delay_counter = 0 then
                        if encoder_value /= previous_value then
                            -- If the encoder value changes, update the previous value and set the PWM parameters for moving counterclockwise
                            previous_value <= encoder_value;
                            pwm_direction <= COUNTERCLOCKWISE;
                            pwm_dutycycle <= std_logic_vector(to_unsigned(homing_dutycycle, pwmBits));
                        elsif (encoder_value <= previous_value && clock_delay_counter = 0) then
                            -- If the encoder value does not change, update the previous value, stop moter and move to the homing complete stage
                            previous_value <= encoder_value;
                            pwm_dutycycle <= (OTHERS => '0');
                            max_value <= encoder_value;
                            current_state <= HOMING_COMPLETE;
                        end if;
                    else 
                        if clock_delay_counter >= encoder_read_frequency then
                            -- If the delay counter reaches the read frequency, reset it to zero
                            clock_delay_counter <= 0;
                        else
                            -- Increment the delay counter
                            clock_delay_counter <= clock_delay_counter + 1;
                        end if;
                    end if;
                    
                when HOMING_COMPLETE =>
                    -- Set the PWM duty cycle to zero to stop movement
                    pwm_dutycycle <= (OTHERS => '0');
                    
                when others =>
                    null;
            end case;
        end if;
    end process;

end architecture Behavioral;
