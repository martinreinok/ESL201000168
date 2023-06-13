/*
 * "Hello World" example.
 *
 * This example prints 'Hello from Nios II' to the STDOUT stream. It runs on
 * the Nios II 'standard', 'full_featured', 'fast', and 'low_cost' example
 * designs. It runs with or without the MicroC/OS-II RTOS and requires a STDOUT
 * device in your system's hardware.
 * The memory footprint of this hosted application is ~69 kbytes by default
 * using the standard reference design.
 *
 * For a reduced footprint version of this template, and an explanation of how
 * to reduce the memory footprint for a given application, see the
 * "small_hello_world" template.
 *
 */

#include <stdio.h>
#include <system.h>
#include <fcntl.h>
#include <unistd.h>
#include "io.h"

int main() {
    int file;
    char read_buffer[16];
    char echo_back[16] = "DE0";
    file = open("/dev/uart_0", O_RDWR);

    if (file) {
    	while (1) {
    	        read(file, read_buffer, 3);
    	        write(file, echo_back, 3);
    	        usleep(1000000);
    	        printf("%c \n", read_buffer[0]);
    	    }
    	close(file);
    	return 0;
    }
    printf("File closed");
    return 0;
}

