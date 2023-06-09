/**********************************************************
 * This file is generated by 20-sim ANSI-C Code Generator
 *
 *  file:  Panmain.c
 *  subm:  PositionControllerPan
 *  model: PositionControllerPan
 *  expmt: Jiwy-1
 *  date:  June 9, 2023
 *  time:  9:44:13 AM
 *  user:  20-sim 5.0 Student License
 *  from:  Universiteit Twente
 *  build: 5.0.2.12127
 **********************************************************/

/* This file is a demo application of how the submodel function can 
 * be used. It uses the global time variables that are used by both
 * the submodel and the integration method.
 *
 * PLEASE NOTE: THIS IS AN EXAMPLE WHERE ALL INPUTS ARE ZERO ! 
 * USE YOUR OWN INPUTS INSTEAD!! ALSO THE SUBMODEL MIGHT SIMPLY 
 * NOT WORK CORRECTLY WITH INPUTS THAT ARE ZERO.
 */

/* 20-sim include files */
#include "Pansubmod.h"
#include <stdio.h>
/* The main function */
int main()
{
	XXDouble u [2 + 1];
	XXDouble y [2 + 1];

	/* Initialize the inputs and outputs with correct initial values */
	u[0] = 0.0;		/* in */
	u[1] = 0.0;		/* position */

	y[0] = 0.0;		/* corr */
	y[1] = 0.0;		/* out */


	/* Initialize the submodel itself */
	PanInitializeSubmodel (u, y, Pan_time);

	/* Simple loop, the time is incremented by the integration method */
	while ( (Pan_time < Pan_finish_time) && (Pan_stop_simulation == XXFALSE) )
	{
		/* Call the submodel to calculate the output */
		PanCalculateSubmodel (u, y, Pan_time);
		printf("Output: %f \n", y[1]);
	}

	/* Perform the final calculations */
	PanTerminateSubmodel (u, y, Pan_time);

	/* and we are done */
	return 0;
}

