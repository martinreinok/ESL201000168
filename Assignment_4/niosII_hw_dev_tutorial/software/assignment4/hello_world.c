//-----------------------------------------------------------------------------
//
// ESL demo
// Version: 1.0
// Creator: Rene Moll
// Date: 10th April 2012
//
//-----------------------------------------------------------------------------
//
// Demo application which sets and reads form a register in the demo IP.
//
// IOWR/IORD are part of the HAL, see the Nios 2 Software developer’s handbook
// for more information.
//
//-----------------------------------------------------------------------------

#include <stdio.h>
#include <string.h>
#include <unistd.h>

#include <io.h>
#include "system.h"

int main()
{
	// Say hello through the debug interface
	printf("Hello from Nios II!\n");

	// Put 0x08 in the memory of the IP and enable the count down
	IOWR(ESL_BUS_DEMO_0_BASE, 0x00, 1 << 31 | 0x08);

	// Verify that it is there
	int nReadOut = IORD(ESL_BUS_DEMO_0_BASE, 0x00);
	printf("From the IP: %u \n\r", nReadOut);

	// Now loop forever ...
	while(1){
		int nReadOut = IORD(ESL_BUS_DEMO_0_BASE, 0x00);
		printf("From the IP: %u \n\r", nReadOut);
		usleep(100000);
		//int n2ReadOut = IORD(ESL_BUS_DEMO_0_BASE, 0x01);
		//printf("From the IP: %u \n\r", n2ReadOut);
		//int n3ReadOut = IORD(ESL_BUS_DEMO_0_BASE, 0x02);
		//printf("From the IP: %u \n\r", n3ReadOut);
		//int n4ReadOut = IORD(ESL_BUS_DEMO_0_BASE, 0x03);
		//printf("From the IP: %u \n\r", n4ReadOut);
	}

	return 0;
}
