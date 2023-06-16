// // // // // // //-----------------------------------------------------------------------------
// // // // // // //
// // // // // // // ESL demo
// // // // // // // Version: 1.0
// // // // // // // Creator: Rene Moll
// // // // // // // Date: 10th April 2012
// // // // // // //
// // // // // // //-----------------------------------------------------------------------------
// // // // // // //
// // // // // // // Demo application which sets and reads form a register in the demo IP.
// // // // // // //
// // // // // // // IOWR/IORD are part of the HAL, see the Nios 2 Software developer’s handbook
// // // // // // // for more information.
// // // // // // //
// // // // // // //-----------------------------------------------------------------------------

// // // // // // #include <stdio.h>
// // // // // // #include <string.h>
// // // // // // #include <unistd.h>

// // // // // // #include <io.h>
// // // // // // #include "system.h"

// // // // // // int main()
// // // // // // {
// // // // // // 	// Say hello through the debug interface
// // // // // // 	printf("Hello from Nios II!\n");

// // // // // // 	// Put 0x08 in the memory of the IP and enable the count down
// // // // // // 	IOWR(ESL_BUS_DEMO_0_BASE, 0x00, 1 << 31 | 0x20);

// // // // // // 	// Verify that it is there
// // // // // // 	int nReadOut = IORD(ESL_BUS_DEMO_0_BASE, 0x00);
// // // // // // 	printf("From the IP: %u \n\r", nReadOut);

// // // // // // 	// Now loop forever ...
// // // // // // 	while(1){
// // // // // // 		int nReadOut = IORD(ESL_BUS_DEMO_0_BASE, 0x00);
// // // // // // 		printf("From the IP: %u \n\r", nReadOut);
// // // // // // 		usleep(100000);
// // // // // // 	}

// // // // // // 	return 0;
// // // // // // }

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

//packages
// #include <stdio.h>
// #include <string.h>
// #include <unistd.h>
// #include <stdint.h>

// #include <alt_types.h>
// #include <io.h>
// #include "system.h"
// #include "sys/alt_irq.h"
// #include "InterruptHandlerForUart.h"

// #include "sys/alt_stdio.h"

// #include "altera_avalon_uart_regs.h"
// #include "altera_avalon_uart.h"
// #include "altera_avalon_uart_fd.h"

// //uart baudrate
// #define BAUD_RATE_0 115200


// #define pi 3.1415926538
// uint16_t maxStepCount0 = 1115;
// uint16_t maxStepCount1 = 221;

// void InitUart()
// {
//     int context_uart0;

//     InitUart0(BAUD_RATE_0);

//     //alt_ic_isr_register(UART_0_IRQ_INTERRUPT_CONTROLLER_ID,UART_0_IRQ,&context_uart1,IsrUart1,NULL); // install UART1 ISR
//     alt_irq_register(UART_0_IRQ,&context_uart0,IsrUart0); // install UART0 ISR

//     //alt_ic_irq_enable (UART_0_IRQ_INTERRUPT_CONTROLLER_ID,UART_0_IRQ);
//     alt_irq_enable (UART_0_IRQ);
// }

// double Stepcount1ToSI(int16_t steps)
// {
// 	double stepsPerRotation = maxStepCount1/170*360;
// 	return steps/stepsPerRotation*2*pi;

// }

// double Stepcount0ToSI(int16_t steps)
// {
// 	double stepsPerRotation = maxStepCount0/325*360;
// 	return steps/stepsPerRotation*2*pi;
// }

// int main()
// {
// 	unsigned char ch;
// 	printf("\n\nHello NiosII!!!!!\n");
// 	IOWR(ESL_NIOS_II_IP_0_BASE, 0x00,0b00000000000000000000000000000000);
// 	//IOWR(ESL_NIOS_II_IP_0_BASE, 0x00,0b00000000000000001000000000000000);
// 	InitUart();

// 	//initialize 20-sim
// 	XXDouble u [3 + 1];
// 	XXDouble y [1 + 1];

// 	/* Initialize the inputs and outputs with correct initial values */
// 	u[0] = 0.0;		/* corr */
// 	u[1] = 0.0;		/* in */
// 	u[2] = 0.0;		/* position */

// 	y[0] = 0.0;		/* out */


// 	/* Initialize the submodel itself */
// 	XXInitializeSubmodel (&u, &y, xx_time);
	
// 	//end initialize 20-sim
	
// 	//variables for avalon communication
// 	uint32_t nReadOut = 0;
// 	uint16_t stepCount0 = 0;
// 	uint16_t stepCount1 = 0;
// 	uint16_t stepCount0Old = 0;
// 	uint16_t stepCount1Old = 0;
// 	int8_t PWM0 = 0;
// 	int8_t PWM1 = 0;
// 	uint32_t avalondSend = 0;
// 	while( (xx_stop_simulation == XXFALSE) ) {

// 		//avalon bus communication
// 		nReadOut = IORD(ESL_NIOS_II_IP_0_BASE, 0x00);
// 		unsigned int readID = nReadOut >> 29;
// 		nReadOut = nReadOut << 3;
// 		uint32_t temp32;

// 		switch(readID) {
// 			case 1:
// 				stepCount0 = nReadOut >> (32-11);

// 				temp32 = nReadOut << 11;
// 				stepCount1 = temp32 >> (32-11);
// 				break;
// 			case 2:
// 				maxStepCount0 = nReadOut >> (32-11);
// 				temp32 = nReadOut << 11;
// 				maxStepCount1 = temp32 >> (32-11);
// 				printf(".....................Received new calibration values!:\t");
// 				printf("stepCount0_max: %d\t stepCount1_max: %d \n\r", maxStepCount0, maxStepCount1);
// 				break;
// 			default:
// 				// default statements
// 				printf("Received incorrect message");
// 				break;
// 		}
		
		
		

// 		if(stepCount0 != stepCount0Old || stepCount1 != stepCount1Old)
// 			printf("stepCount0: %d\t stepCount1: %d \n\r", stepCount0, stepCount1);
		
// 		//generate inputs
// 		u[1] = 0;
// 		if(xx_time >= 1){
// 			u[1] = 0.5*pi;

// 		}
// 		if(xx_time >= 5){
// 			u[1] = 1.5*pi;

// 		}
// 		if(xx_time >= 10){

// 			u[1] = 0.5*pi;

// 		}
		
		
// 		/* Call the 20-sim submodel to calculate the output */
// 		u[2] = Stepcount0ToSI(stepCount0);
// 		double temp = y[0];
		
// 		//printf("%f\n",temp);

// 		XXCalculateSubmodel (&u, &y, xx_time);
// 		PWM0 = y[0]*70;
// 		int16_t temp16 = 0;
// 		avalondSend = PWM0 << 24 | PWM1 <<16 | temp16;
// 		//printf("%x\n",avalondSend);
// 		IOWR(ESL_NIOS_II_IP_0_BASE, 0x00,avalondSend);
		
// 		if(!EmptyUart0()){
// 			ch = GetUart0();
// 			printf("received message: %c\n",ch);
// 			PutUart0(ch);
// 			PutUart0('\r');
// 			PutUart0('\n');
			
			
// 		}
		
// 		stepCount0Old = stepCount0;
// 		stepCount1Old = stepCount1;
// 		xx_time+=0.0013;
// 	} 

// 	/* Perform the final 20-sim calculations */
// 	XXTerminateSubmodel (&u, &y, xx_time);

// return 0;

// }

#include <stdio.h>
#include <system.h>
#include <string.h>
#include <fcntl.h>
#include <unistd.h>
#include "io.h"

/* 20-sim include files */
#include "Pansubmod.h"
#include "Tiltsubmod.h"

# define	PI	3.14159265358979323846

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
	// Say hello through the debug interface
	printf("Hello from Nios II!\n");

	// Put 0x08 in the memory of the IP and enable the count down
	IOWR(ESL_BUS_DEMO_0_BASE, 0x00, 1 << 31 | 0x20);

	// Verify that it is there
	int nReadOut = IORD(ESL_BUS_DEMO_0_BASE, 0x00);
	printf("From the IP: %u \n\r", nReadOut);

	XXDouble u_Tilt[3 + 1];
	XXDouble y_Tilt[1 + 1];

	XXDouble u_Pan[2 + 1];
	XXDouble y_Pan[2 + 1];

	/* Initialize the inputs and outputs of TIlt controller with correct initial values */
	u_Tilt[0] = 0.0;		/* corr */
	u_Tilt[1] = 1.0;		/* in */
	u_Tilt[2] = 0.0;		/* position */

	y_Tilt[0] = 0.0;		/* out */

	/* Initialize the inputs and outputs of Pan Controller with correct initial values */
	u_Pan[0] = 1.0;		/* in */
	u_Pan[1] = 0.0;		/* position */

	y_Pan[0] = 0.0;		/* corr */
	y_Pan[1] = 0.0;		/* out */

	/* Initialize the submodel itself */
	TiltInitializeSubmodel(u_Tilt, y_Tilt, Tilt_time);
	PanInitializeSubmodel(u_Pan, y_Pan, Pan_time);

    int file;
    char read_buffer[16];
    //char echo_back = "DE0";
    //file = open("dev/uart_0", O_RDWR);

    //if (file) {
    	while (1) {
    	        //read(file, &read_buffer, 3);
    	        // write(file, &echo_back, 3);
    	        usleep(10000000);
    	        //printf("%c \n", read_buffer);

				while ((Tilt_time < Tilt_finish_time) || (Pan_time < Pan_finish_time))
				{
					int EncoderAxisPan = IORD(ESL_BUS_DEMO_0_BASE, 0x00);
					//generate inputs
					u_Pan[1] = 0;
					if(Pan_time >= 1){
						u_Pan[1] = 0.5*PI;

					}
					if(Pan_time >= 5){
						u_Pan[1] = 1.5*PI;

					}
					if(Pan_time >= 10){

						u_Pan[1] = 0.5*PI;

					}

					u_Pan[2] = convertPanToRadian(EncoderAxisPan);
					
					/* Call the submodel to calculate the output */
					if (Tilt_stop_simulation == XXFALSE)
					{
						TiltCalculateSubmodel(u_Tilt, y_Tilt, Tilt_time);
					}

					if (Pan_stop_simulation == XXFALSE)
					{
						PanCalculateSubmodel(u_Pan, y_Pan, Pan_time);
					}	

					int pwmPan = convertToPwm(y_Pan[1]);
					printf("To the IP: %u \n\r", pwmPan);
					IOWR(ESL_BUS_DEMO_0_BASE, 0x00, 1 << 31 | pwmPan);
				}

				/* Perform the final calculations */
				TiltTerminateSubmodel(u_Tilt, y_Tilt, Tilt_time);
				PanTerminateSubmodel(u_Pan, y_Pan, Pan_time);
    	    }
    	   
    //}
	
    printf("File closed");
    return 0;
}



