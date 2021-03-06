LIBRARY ieee;
USE ieee.std_logic_1164.all;
ENTITY timetrial IS
PORT(reset: IN BIT;
clock: IN STD_Logic;
		led: OUT BIT);
END timetrial;

ARCHITECTURE behavior OF timetrial IS
SIGNAL count: INTEGER RANGE 0 TO 300000000 := 0;
BEGIN
		PROCESS(clock, reset)
		BEGIN
		IF (reset = '1') THEN 
					count <= 0;
					led <= '0';
		ELSIF rising_edge(clock) THEN
			count <= count + 1;
			led <= '1';
		
				IF (count > 290000000) THEN 
				count <= count + 1;
				led <= '0';
				
				ELSIF(count = 300000000)THEN
				count <= 0;
				led <= '0';
				
		END IF;
		
				END IF;
			END PROCESS;
			END behavior;
			