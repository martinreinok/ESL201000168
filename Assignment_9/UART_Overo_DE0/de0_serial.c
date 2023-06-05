#include <stdio.h>
#include <system.h>
#include "io.h"

#define UART_BASE       0x10001000 // Base address of UART peripheral

// Function to initialize the UART
void uart_init() {
    // Enable transmit and receive
    IOWR(UART_BASE, 1, 0x03);
}

// Function to send a character via UART
void uart_send_char(char c) {
    while ((IORD(UART_BASE, 2) & 0x01) == 0); // Wait for the UART to be ready to transmit
    IOWR(UART_BASE, 0, c);
}

// Function to receive a character via UART
char uart_receive_char() {
    while ((IORD(UART_BASE, 2) & 0x02) == 0); // Wait for a character to be received
    return IORD(UART_BASE, 0);
}

int main() {
    uart_init(); // Initialize the UART

    while (1) {
        // Read a character from UART and echo it back
        char c = uart_receive_char();
        uart_send_char(c);
    }

    return 0;
}
