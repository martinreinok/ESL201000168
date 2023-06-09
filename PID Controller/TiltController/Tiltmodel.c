/**********************************************************
 * This file is generated by 20-sim ANSI-C Code Generator
 *
 *  file:  Tiltmodel.c
 *  model: PositionControllerTilt
 *  expmt: Jiwy-1
 *  date:  June 9, 2023
 *  time:  10:02:48 AM
 *  user:  20-sim 5.0 Student License
 *  from:  Universiteit Twente
 *  build: 5.0.2.12127
 **********************************************************/

/* This file contains the actual model variables and equations */

/* Note: Alias variables are the result of full optimization
   of the model in 20-sim. As a result, only the real variables
   are used in the model for speed. The user may also include
   the alias variables by adding them to the end of the array:

   XXDouble xx_variables[NUMBER_VARIABLES + NUMBER_ALIAS_VARIABLES + 1];
   XXString xx_variable_names[] = {
     VARIABLE_NAMES, ALIAS_VARIABLE_NAMES, NULL
   };

   and calculate them directly after the output equations:

   void XXCalculateOutput (void)
   {
     OUTPUT_EQUATIONS
     ALIAS_EQUATIONS
   }
*/

/* system include files */
#include <stdlib.h>
#include <math.h>
#include <string.h>

/* 20-sim include files */
#include "Tiltmodel.h"
#include "xxfuncs.h"

/* the global variables */
XXDouble Tilt_start_time = 0.0;
XXDouble Tilt_finish_time = 20.0;
XXDouble Tilt_step_size = 0.01;
XXDouble Tilt_time = 0.0;
XXInteger Tilt_steps = 0;
XXBoolean Tilt_initialize = XXTRUE;
XXBoolean Tilt_major = XXTRUE;
XXBoolean Tilt_stop_simulation = XXFALSE;

/* the variable arrays */
XXDouble Tilt_P[xx_parameters_size];		/* parameters */
XXDouble Tilt_I[xx_initialvalues_size];		/* initial values */
XXDouble Tilt_V[xx_variables_size];		/* variables */
XXDouble Tilt_s[xx_states_size];		/* states */
XXDouble Tilt_R[xx_states_size];		/* rates (or new states) */

/* the names of the variables as used in the arrays above
   uncomment this part if these names are needed
XXString xx_parameter_names[] = {
	"corrGain\\K",
	"PID1\\kp",
	"PID1\\tauD",
	"PID1\\beta",
	"PID1\\tauI",
	"SignalLimiter2\\minimum",
	"SignalLimiter2\\maximum"
,	NULL
};
XXString xx_initial_value_names[] = {
	"PID1\\uD_previous_initial",
	"PID1\\error_previous_initial",
	"PID1\\uI_previous_initial"
,	NULL
};
XXString xx_variable_names[] = {
	"corrGain\\input",
	"corrGain\\output",
	"PID1\\output",
	"",
	"PlusMinus1\\output",
	"PlusMinus2\\plus1",
	"PlusMinus2\\minus1",
	"SignalLimiter2\\output",
	"corr",
	"in",
	"position",
	"out"
,	NULL
};
XXString xx_state_names[] = {
	"PID1\\uD_previous",
	"PID1\\error_previous",
	"PID1\\uI_previous"
,	NULL
};
XXString xx_rate_names[] = {
	"",
	"PID1\\error",
	""
,	NULL
};
*/

#if (7 > 8192) && defined _MSC_VER
#pragma optimize("", off)
#endif
void TiltModelInitialize_parameters(void)
{
	/* set the parameters */
	Tilt_P[0] = 0.0;		/* corrGain\K */
	Tilt_P[1] = 1.6;		/* PID1\kp */
	Tilt_P[2] = 0.05;		/* PID1\tauD */
	Tilt_P[3] = 0.001;		/* PID1\beta */
	Tilt_P[4] = 10.5;		/* PID1\tauI */
	Tilt_P[5] = -0.99;		/* SignalLimiter2\minimum */
	Tilt_P[6] = 0.99;		/* SignalLimiter2\maximum */

}
#if (7 > 8192) && defined _MSC_VER
#pragma optimize("", on)
#endif

void TiltModelInitialize_initialvalues(void)
{
	/* set the initial values */
	Tilt_I[0] = 0.0;		/* PID1\uD_previous_initial */
	Tilt_I[1] = 0.0;		/* PID1\error_previous_initial */
	Tilt_I[2] = 0.0;		/* PID1\uI_previous_initial */

}

void TiltModelInitialize_states(void)
{
	/* set the states */
	Tilt_s[0] = Tilt_I[0];		/* PID1\uD_previous */
	Tilt_s[1] = Tilt_I[1];		/* PID1\error_previous */
	Tilt_s[2] = Tilt_I[2];		/* PID1\uI_previous */

}

void TiltModelInitialize_variables(void)
{
	/* initialize the variable memory to zero */
	memset(Tilt_V, 0, xx_variables_size * sizeof(XXDouble));
}

/* this method is called before calculation is possible */
void TiltModelInitialize (void)
{
	TiltModelInitialize_parameters();
	TiltModelInitialize_variables();
	TiltModelInitialize_initialvalues();
	TiltModelInitialize_states();
}

/* This function calculates the initial equations of the model.
 * These equations are calculated before anything else
 */
void TiltCalculateInitial (void)
{

}

/* This function calculates the static equations of the model.
 * These equations are only dependent from parameters and constants
 */
void TiltCalculateStatic (void)
{

}

/* This function calculates the input equations of the model.
 * These equations are dynamic equations that must not change
 * in calls from the integration method (like random and delay).
 */
void TiltCalculateInput (void)
{

}

/* This function calculates the dynamic equations of the model.
 * These equations are called from the integration method
 * to calculate the new model rates (that are then integrated).
 */
void TiltCalculateDynamic (void)
{
	/* PID1\factor = 1 / (sampletime + PID1\tauD * PID1\beta); */
	Tilt_V[3] = 1.0 / (Tilt_step_size + Tilt_P[2] * Tilt_P[3]);

	/* corrGain\input = corr; */
	Tilt_V[0] = Tilt_V[8];

	/* PlusMinus2\plus1 = in; */
	Tilt_V[5] = Tilt_V[9];

	/* PlusMinus2\minus1 = position; */
	Tilt_V[6] = Tilt_V[10];

	/* corrGain\output = corrGain\K * corrGain\input; */
	Tilt_V[1] = Tilt_P[0] * Tilt_V[0];

	/* PID1\error = PlusMinus2\plus1 - PlusMinus2\minus1; */
	Tilt_R[1] = Tilt_V[5] - Tilt_V[6];

	/* PID1\uD = PID1\factor * (((PID1\tauD * PID1\uD_previous) * PID1\beta + (PID1\tauD * PID1\kp) * (PID1\error - PID1\error_previous)) + (sampletime * PID1\kp) * PID1\error); */
	Tilt_R[0] = Tilt_V[3] * (((Tilt_P[2] * Tilt_s[0]) * Tilt_P[3] + (Tilt_P[2] * Tilt_P[1]) * (Tilt_R[1] - Tilt_s[1])) + (Tilt_step_size * Tilt_P[1]) * Tilt_R[1]);

	/* PID1\uI = PID1\uI_previous + (sampletime * PID1\uD) / PID1\tauI; */
	Tilt_R[2] = Tilt_s[2] + (Tilt_step_size * Tilt_R[0]) / Tilt_P[4];

	/* PID1\output = PID1\uI + PID1\uD; */
	Tilt_V[2] = Tilt_R[2] + Tilt_R[0];

	/* PlusMinus1\output = corrGain\output + PID1\output; */
	Tilt_V[4] = Tilt_V[1] + Tilt_V[2];

	/* SignalLimiter2\output = (if PlusMinus1\output < SignalLimiter2\minimum then SignalLimiter2\minimum else (if PlusMinus1\output > SignalLimiter2\maximum then SignalLimiter2\maximum else PlusMinus1\output end) end); */
	Tilt_V[7] = ((Tilt_V[4] < Tilt_P[5]) ? 
		/* SignalLimiter2\minimum */
		Tilt_P[5]
	:
		/* (if PlusMinus1\output > SignalLimiter2\maximum then SignalLimiter2\maximum else PlusMinus1\output end) */
		((Tilt_V[4] > Tilt_P[6]) ? 
			/* SignalLimiter2\maximum */
			Tilt_P[6]
		:
			/* PlusMinus1\output */
			Tilt_V[4]
		)
	);


	/* increment the step counter */
	Tilt_steps++;
}

/* This function calculates the output equations of the model.
 * These equations are not needed for calculation of the rates
 * and are kept separate to make the dynamic set of equations smaller.
 * These dynamic equations are called often more than one time for each
 * integration step that is taken. This makes model computation much faster.
 */
void TiltCalculateOutput (void)
{
	/* out = SignalLimiter2\output; */
	Tilt_V[11] = Tilt_V[7];

}

/* This function calculates the final equations of the model.
 * These equations are calculated after all the calculations
 * are performed
 */
void TiltCalculateFinal (void)
{

}

/* this method is called after all calculations are performed */
void TiltModelTerminate(void)
{
}

