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

	// // Put 0x08 in the memory of the IP and enable the count down
	// IOWR(ESL_BUS_DEMO_0_BASE, 0x00, 1 << 31 | 0x20);

	// Verify that it is there
	int nReadOut = IORD(ESL_BUS_DEMO_0_BASE, 0x00);
	printf("From the IP: %u \n\r", nReadOut);

	printf("Starting PID loop");
	//TiltInitializeSubmodel(u_Tilt, y_Tilt, Tilt_time);
	PanInitializeSubmodel(u_Pan, y_Pan, Pan_time);

    int file;
    char read_buffer[16];

	while (1)//(Pan_time < Pan_finish_time))
	{

		if (file) {
    	while (1) {
    	        read(file, &read_buffer, 3);
    	        write(file, &echo_back, 3);
    	        usleep(10000000);
    	        printf("%c \n", read_buffer);
    	    }
    	    return 0;
    	}
		
		uint32_t message = 0;
		message = tiltDir << 31 | panDir << 30 | pwmPan << 10 | pwmTilt;

		//printf("To the IP: %u \n\r", message);
		IOWR(ESL_BUS_DEMO_0_BASE, 0x00, message);	
	}
	
    printf("File closed");
    return 0;
}




