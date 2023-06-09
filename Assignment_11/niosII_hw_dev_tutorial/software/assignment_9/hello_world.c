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
