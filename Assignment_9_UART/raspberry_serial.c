// Basic serial read - write
#include <stdio.h>
#include <fcntl.h>
#include <unistd.h>
#include <termios.h>
#include <string.h>

#define SERIAL_PORT "/dev/ttyS0"  
#define BAUD_RATE B115200

int main() {
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
	
	while(1) {
		// Write data to the serial port
		char message[] = "H!";  // Replace with the data you want to send
		write(serial_fd, message, strlen(message));

		// Read data from the serial port
		char buffer[256];
		ssize_t bytes_read = read(serial_fd, buffer, sizeof(buffer) - 1);
		if (bytes_read > 0) {
			buffer[bytes_read] = '\0';  // Add null terminator to the received data
			printf("Received data: %s\n", buffer);
		}
	}
    // Close the serial port
    close(serial_fd);
    return 0;
}
