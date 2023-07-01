#include <stdio.h>
#include <system.h>
#include <fcntl.h>
#include <unistd.h>
#include "io.h"

int main() {
    int file;
    char read_buffer[16];
    char echo_back = "DE0";
    file = open("dev/uart_0", O_RDWR);

    if (file) {
    	while (1) {
    	        read(file, &read_buffer, 3);
    	        write(file, &echo_back, 3);
    	        usleep(10000000);
    	        printf("%c \n", read_buffer);
    	    }
    	    return 0;
    }
    printf("File closed");
    return 0;
}

