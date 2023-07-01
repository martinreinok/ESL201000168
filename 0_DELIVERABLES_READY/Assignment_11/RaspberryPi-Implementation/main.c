#include <stdio.h>
#include <string.h>
#include <fcntl.h>
#include <unistd.h>
#include <stdint.h>
#include <termios.h>

/* 20-sim include files */
#include "Pansubmod.h"
#include "Tiltsubmod.h"

# define	PI	3.1415

#define SERIAL_PORT "/dev/ttyS0"  
#define BAUD_RATE B115200

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

int initUart() {
	int serial_fd;
    struct termios tty;

    // Open the serial port
    serial_fd = open(SERIAL_PORT, O_RDWR | O_NOCTTY);
    if (serial_fd < 0) {
        perror("Error opening serial port");
        return 1;
    }

    // Get the current serial port settings
    tcgetattr(serial_fd, &tty);

    // Set the baud rate
    cfsetospeed(&tty, BAUD_RATE);
    cfsetispeed(&tty, BAUD_RATE);

    // Set 8N1 (8 data bits, no parity, 1 stop bit)
    tty.c_cflag &= ~CSIZE;  // Clear the data size bits
    tty.c_cflag |= CS8;     // Set data size to 8 bits
    tty.c_cflag &= ~PARENB; // Disable parity bit
    tty.c_cflag &= ~CSTOPB; // Set one stop bit

    // Set non-canonical mode
    tty.c_lflag = 0;

    // Apply the new serial port settings
    tcsetattr(serial_fd, TCSANOW, &tty);
	return serial_fd;
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
	printf("Hello from not Nios II!\n");
    return 0;
}

