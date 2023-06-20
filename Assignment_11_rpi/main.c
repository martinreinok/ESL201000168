#include <stdio.h>
#include <string.h>
#include <fcntl.h>
#include <unistd.h>
#include <stdint.h>

/* 20-sim include files */
#include "Pansubmod.h"
#include "Tiltsubmod.h"

# define	PI	3.1415

int convertToPwm(XXDouble pidOutput) {
	const int bitSize = 4096;
	const int bits = bitSize / 2;

	/* Calculation */
	return (int)(bits * pidOutput);
}

float convertPanToRadian(int panEncoderInput) {
	const int countsPerRev = 2000;
	const int centerPos = countsPerRev / 2;
	const float countPerDeg = (float)countsPerRev / 360;

	const float degToRadian = (float)(PI / 180);

	//printf("countPerDeg Tilt: %f \n", countPerDeg);
	//printf("degToRadian Tilt: %f \n", degToRadian);

	/* Calculation */
	return (float)(panEncoderInput - centerPos) * (degToRadian / countPerDeg);
}

float convertTiltToRadian(int tiltEncoderInput) {
	const int countsPerRev = 500;
	const int centerPos = countsPerRev / 2;
	const float countPerDeg = (float)countsPerRev / 360;

	const float degToRadian = (float) (PI / 180);

	//printf("countPerDeg Tilt: %f \n", countPerDeg);
	//printf("degToRadian Tilt: %f \n", degToRadian);

	/* Calculation */
	return (float) (tiltEncoderInput - centerPos) * (degToRadian / countPerDeg);
}

int main() {
	printf("Hello from not Nios II!\n");
    return 0;
}

