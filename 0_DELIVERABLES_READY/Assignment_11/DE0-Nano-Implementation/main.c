#include <stdio.h>
#include <system.h>
#include <string.h>
#include <fcntl.h>
#include <unistd.h>
#include <time.h>     
#include <alt_types.h>
#include <inttypes.h>
#include <stdint.h>
#include <float.h>
#include "io.h"
#include <stdbool.h>

/* 20-sim include files */
#include "Pansubmod.h"
//#include "Tiltsubmod.h"

# define	PI	3.1415

int convertToPwm(XXDouble pidOutput) {
	const int bitSize = 100 ;
	/* Calculation */
	return (int)(bitSize * pidOutput);
}

float convertPanToRadian(int panEncoderInput) {
	const int countsPerRev = 5000;
	const int centerPos = countsPerRev / 2;
	const float countPerDeg = (float)countsPerRev / 360;

	const float degToRadian = (float)(PI / 180);

	//printf("countPerDeg Tilt: %f \n", countPerDeg);
	//printf("degToRadian Tilt: %f \n", degToRadian);

	/* Calculation */
	return (float) (panEncoderInput - centerPos) * (degToRadian / countPerDeg);
}

float convertTiltToRadian(int tiltEncoderInput) {
	const int countsPerRev = 1250;
	const int centerPos = countsPerRev / 2;
	const float countPerDeg = (float)countsPerRev / 360;

	const float degToRadian = (float) (PI / 180);

	//printf("countPerDeg Tilt: %f \n", countPerDeg);
	//printf("degToRadian Tilt: %f \n", degToRadian);

	/* Calculation */
	return (float) (tiltEncoderInput - centerPos) * (degToRadian / countPerDeg);
}

int initUart(const char device) {
	// Returns the file descriptor integer
    return open(device, O_RDWR);
}

struct UartPayload {
    int x;
    int y;
};

bool is_digit(char c) {
    return c >= '0' && c <= '9';
}

int parse_int(const char *str, int *result) {
    int sign = 1;
    int i = 0;
    int value = 0;

    if (str[i] == '-') {
        sign = -1;
        i++;
    }

    while (is_digit(str[i])) {
        value = value * 10 + (str[i] - '0');
        i++;
    }

    *result = value * sign;

    // Return the number of characters consumed
    return i;
}

struct UartPayload readUartPayload(int file) {
	// Payload starts with: <
	// Payload ends with: >
	// Payload contains: <int,int>
	char read_buffer[256];
	char current_character;
	int index = 0;
	struct UartPayload payload;
	
    // Read until payload start marker '<'
    while (read(file, &current_character, 1) > 0) {
        if (current_character == '<') {
            break;
        }
    }
	
	// Read until payload end marker '>'
    while (read(file, &current_character, 1) > 0) {
        if (current_character == '>') {
            break;
        }
        read_buffer[index++] = current_character;
    }
	
	// Null-terminate the read buffer
    read_buffer[index] = '\0';
	
	// Parse the x and y values
    int offset = 0;
    offset += parse_int(&read_buffer[offset], &payload.x);

    // Skip the comma separator
    offset++;

    parse_int(&read_buffer[offset], &payload.y);

    return payload;
}

void writeUart(int file, const char *data) {
    write(file, data, strlen(data));
}

int main() {
	// Say hello through the debug interface
	printf("Hello from Nios II!\n");

	// Put 0x08 in the memory of the IP and enable the count down
	IOWR(ESL_BUS_DEMO_0_BASE, 0x00, 1 << 31 | 0x20);

	// Verify that it is there
	int nReadOut = IORD(ESL_BUS_DEMO_0_BASE, 0x00);
	printf("From the IP: %u \n\r", nReadOut);

	XXDouble u_Tilt[3 + 1];
	XXDouble y_Tilt[1 + 1];

	XXDouble u_Pan[2 + 1];
	XXDouble y_Pan[2 + 1];

	int EncoderAxis = IORD(ESL_BUS_DEMO_0_BASE, 0x00);
	int encoderPan = EncoderAxis >> 16;
	int temp = EncoderAxis << 16;
	int encoderTilt = temp >> 16;

	/* Initialize the inputs and outputs of TIlt controller with correct initial values */
	u_Tilt[0] = 0.0;		/* corr */
	//u_Tilt[1] = convertPanToRadian(encoderTilt);		/* in */
	//u_Tilt[2] = convertPanToRadian(encoderTilt);		/* position */
	u_Tilt[1] = 0.0;		/* in */
	u_Tilt[2] = 0.0;		/* position */

	y_Tilt[0] = 0.0;		/* out */

	/* Initialize the inputs and outputs of Pan Controller with correct initial values */
	//u_Pan[0] = convertPanToRadian(encoderPan);		/* in */
	//u_Pan[1] = convertPanToRadian(encoderPan);		/* position */
	u_Pan[0] = 0.0;		/* in */
	u_Pan[1] = 0.0;		/* position */

	y_Pan[0] = 0.0;		/* corr */
	y_Pan[1] = 0.0;		/* out */

	/* Initialize the submodel itself */
	printf("Starting PID loop");
	//TiltInitializeSubmodel(u_Tilt, y_Tilt, Tilt_time);
	PanInitializeSubmodel(u_Pan, y_Pan, Pan_time);

    int file;
    char read_buffer[16];
	
	clock_t startTimeTilt, startTimePan, curTimeTilt, curTimePan;
	startTimeTilt = clock();
	startTimePan = clock();
	
	while (1)
	{
		EncoderAxis = IORD(ESL_BUS_DEMO_0_BASE, 0x00);
		encoderPan = EncoderAxis >> 16;
		temp = EncoderAxis << 16;
		encoderTilt = temp >> 16;

		u_Pan[0] = convertPanToRadian(encoderPan);
		u_Tilt[0] = y_Pan[0];
		u_Tilt[1] = convertTiltToRadian(encoderTilt);
		
		//generate inputs
		u_Pan[1] = 0;
		u_Tilt[2] = 0;
		if(Pan_time >= 1 && Pan_time <= 2){
			u_Pan[1] = 0.5*PI;
			//printf("time 0\n");;
		}
		if(Pan_time >= 5 && Pan_time <= 6){
			u_Pan[1] = 1.0*PI;
			//printf("time 5\n");
		}
		if(Pan_time >= 10 && Pan_time <= 11){

			u_Pan[1] = -1.0*PI;
			//printf("time 10\n");
		}
		if(Pan_time >= 15){

			Pan_time = 0.0;
			//printf("Reset time \n\r");
		}

		curTimeTilt = clock();
		
		curTimePan = clock();
		//printf("time curTimePan %u \n", (int)curTimePan);
		if ((float)(curTimePan - startTimePan)/CLOCKS_PER_SEC >= Pan_step_size ) {
			PanCalculateSubmodel(u_Pan, y_Pan, Pan_time);
			startTimePan = curTimePan;
			//printf("Calcmodel\n");
		}
		
		int pwmPan = convertToPwm(y_Pan[1]);
		int pwmTilt = convertToPwm(y_Tilt[0]);

		int panDir = 0;
		if (pwmPan < 0) {
			panDir = 1;
		}
		int tiltDir = 0;
		if (pwmTilt < 0) {
			tiltDir = 1;
		}

		pwmPan = abs(pwmPan);
		pwmTilt = abs(pwmTilt);

		uint32_t message = 0;
		message = tiltDir << 31 | panDir << 30 | pwmPan << 10 | pwmTilt;

		//printf("To the IP: %u \n\r", message);
		IOWR(ESL_BUS_DEMO_0_BASE, 0x00, message);	
	}
	/* Perform the final calculations */
	//TiltTerminateSubmodel(u_Tilt, y_Tilt, Tilt_time);
	PanTerminateSubmodel(u_Pan, y_Pan, Pan_time);   

	
    printf("File closed");
    return 0;
}




