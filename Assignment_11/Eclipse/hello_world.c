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
	const int bitSize = 4096;
	const int bits = bitSize / 2;

	/* Calculation */
	return (int)(bits * pidOutput);
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
	const int countsPerRev = 2000;
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
    sscanf(read_buffer, "%d,%d", &payload.x, &payload.y);
	
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
	TiltInitializeSubmodel(u_Tilt, y_Tilt, Tilt_time);
	PanInitializeSubmodel(u_Pan, y_Pan, Pan_time);

    int file;
    char read_buffer[16];
    // char echo_back = "DE0";
    // file = open("dev/uart_0", O_RDWR);

    // if (file) {
    // 	while (1) {
	// 		read(file, &read_buffer, 3);
	// 		// write(file, &echo_back, 3);
	// 		usleep(10000000);
	// 		printf("%c \n", read_buffer);

	// 		//////////////////////////////////
	// 		// MODIFY THIS
	// 		float posTilt = (float)read_buffer[0];
	// 		float posPan = (float)read_buffer[1];
	// 		/////////////////////////////////
			
	// 		EncoderAxis = IORD(ESL_BUS_DEMO_0_BASE, 0x00);
	// 		encoderPan = EncoderAxis >> 16;
	// 		temp = EncoderAxis << 16;
	// 		encoderTilt = temp >> 16;

	// 		u_Pan[0] = convertPanToRadian(encoderPan);
	// 		u_tilt[0] = y_Pan[0];
	// 		u_Tilt[1] = convertTiltToRadian(encoderTilt);

	// 		//printf("Data: %d \n", (int)u_Pan[0]*10000);
	// 		//printf("Pan encoder: %d \n", (int)encoderPan);
	// 		//printf("Pan tilt: %d \n", (int)encoderTilt);

	// 		//usleep(10000);
	// 		u_Pan[1] = posPan;
	// 		u_Tilt[2] = posTilt;

	// 		curTimeTilt = clock();
	// 		if ((float)(curTimeTilt - startTimeTilt)/CLOCKS_PER_SEC >= Tilt_step_size) {
	// 			TiltCalculateSubmodel(u_Tilt, y_Tilt, Tilt_time);
	// 			startTimeTilt = curTimeTilt;
	// 		}
	// 		curTimePan = clock();
	// 		if ((float)(curTimePan - startTimePan)/CLOCKS_PER_SEC >= Pan_step_size) {
	// 			PanCalculateSubmodel(u_Pan, y_Pan, Pan_time);
	// 			startTimePan = curTimePan;
	// 		}
			
	// 		int pwmPan = convertToPwm(y_Pan[1]);
	// 		int pwmTilt = convertToPwm(y_Tilt[0]);

	// 		int panDir = 0;
	// 		if (pwmPan < 0) {
	// 			panDir = 1;
	// 		}
	// 		int tiltDir = 0;
	// 		if (pwmTilt < 0) {
	// 			tiltDir = 1;
	// 		}

	// 		pwmPan = abs(pwmPan);
	// 		pwmTilt = abs(pwmTilt);

	// 		// printf("Pan direction: %d \n", panDir);
	// 		// printf("Pan pwm: %d \n", pwmPan);

	// 		uint32_t message = 0;
	// 		message = tiltDir << 31 | panDir << 30 | pwmPan << 10 | pwmTilt;

	// 		//printf("To the IP: %u \n\r", message);
	// 		IOWR(ESL_BUS_DEMO_0_BASE, 0x00, message);
    // 	}
	// 	TiltTerminateSubmodel(u_Tilt, y_Tilt, Tilt_time);
	// 	PanTerminateSubmodel(u_Pan, y_Pan, Pan_time);   
    // }

	//read(file, &read_buffer, 3);
	// write(file, &echo_back, 3);
	//usleep(10000000);
	//printf("%c \n", read_buffer);
	
	clock_t startTimeTilt, startTimePan, curTimeTilt, curTimePan;
	startTimeTilt = clock();
	startTimePan = clock();
	//while ((Tilt_time < Tilt_finish_time) || (Pan_time < Pan_finish_time))
	while (1)//(Pan_time < Pan_finish_time))
	{
		EncoderAxis = IORD(ESL_BUS_DEMO_0_BASE, 0x00);
		encoderPan = EncoderAxis >> 16;
		temp = EncoderAxis << 16;
		encoderTilt = temp >> 16;

		u_Pan[0] = convertPanToRadian(encoderPan);
		u_tilt[0] = y_Pan[0];
		u_Tilt[1] = convertTiltToRadian(encoderTilt);

		//printf("Data: %d \n", (int)u_Pan[0]*10000);
		//printf("Pan encoder: %d \n", (int)encoderPan);
		//printf("Pan tilt: %d \n", (int)encoderTilt);

		//usleep(10000);
		generate inputs
		u_Pan[1] = 0;
		u_Tilt[2] = 0;
		if(Pan_time >= 1){
			u_Pan[1] = 0.5*PI;

		}
		if(Pan_time >= 5){
			u_Pan[1] = 1.0*PI;

		}
		if(Pan_time >= 10){

			u_Pan[1] = -1.0*PI;
		}
		if(Pan_time >= 15){

			Pan_time = 0.0;
		}

		if(Tilt_time >= 1){
			u_Tilt[2] = 0.5*PI;

		}
		if(Tilt_time >= 5){
			u_Tilt[2] = -0.5*PI;

		}
		if(Tilt_time >= 10){

			u_Tilt[2] = 0.0;
		}
		if(Tilt_time >= 15){

			Tilt_time = 0.0;
		}

		curTimeTilt = clock();
		if ((float)(curTimeTilt - startTimeTilt)/CLOCKS_PER_SEC >= Tilt_step_size) {
			TiltCalculateSubmodel(u_Tilt, y_Tilt, Tilt_time);
			startTimeTilt = curTimeTilt;
		}
		curTimePan = clock();
		if ((float)(curTimePan - startTimePan)/CLOCKS_PER_SEC >= Pan_step_size) {
			PanCalculateSubmodel(u_Pan, y_Pan, Pan_time);
			startTimePan = curTimePan;
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

		// printf("Pan direction: %d \n", panDir);
		// printf("Pan pwm: %d \n", pwmPan);

		uint32_t message = 0;
		message = tiltDir << 31 | panDir << 30 | pwmPan << 10 | pwmTilt;

		//printf("To the IP: %u \n\r", message);
		IOWR(ESL_BUS_DEMO_0_BASE, 0x00, message);	
	}
	/* Perform the final calculations */
	TiltTerminateSubmodel(u_Tilt, y_Tilt, Tilt_time);
	PanTerminateSubmodel(u_Pan, y_Pan, Pan_time);   

	
    printf("File closed");
    return 0;
}




