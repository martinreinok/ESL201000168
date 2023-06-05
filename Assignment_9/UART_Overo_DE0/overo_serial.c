// Basic serial read - write
// Tested with raspberry & arduino
#include <stdio.h>
#include <stdlib.h>
#include <fcntl.h>
#include <unistd.h>
#include <termios.h>

#define SERIAL_PORT "/dev/ttyUSB0"

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

    // Set the serial port parameters
    cfsetospeed(&tty, B9600); // Set baud rate to 9600
    cfsetispeed(&tty, B9600);
    tty.c_cflag &= ~CSIZE; // Clear the data size bits
    tty.c_cflag |= CS8; // Set data size to 8 bits
    tty.c_cflag &= ~PARENB; // Disable parity bit
    tty.c_cflag &= ~CSTOPB; // Set one stop bit
    tty.c_cflag |= CREAD | CLOCAL; // Enable receiver and ignore modem control lines
    tty.c_iflag &= ~(IXON | IXOFF | IXANY); // Disable software flow control
    tty.c_lflag = 0; // Set non-canonical mode
    tty.c_oflag = 0; // Disable output processing

    // Set the new serial port settings
    tcsetattr(serial_fd, TCSANOW, &tty);
    char buffer[256];
    ssize_t bytes_read;

    while (1) {
        // Read data from serial port
        bytes_read = read(serial_fd, buffer, sizeof(buffer));
        if (bytes_read > 0) {
            buffer[bytes_read] = '\0'; // Add null terminator to the received data
            printf("Received data: %s", buffer);
        }

        char message[] = "100\n";
        write(serial_fd, message, sizeof(message));
        usleep(1000000);
    }

    close(serial_fd);

    return 0;
}
