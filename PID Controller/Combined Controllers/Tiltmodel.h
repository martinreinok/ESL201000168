/**********************************************************
 * This file is generated by 20-sim ANSI-C Code Generator
 *
 *  file:  TiltsitionControllerTilt
 *  model: PositionControllerTilt
 *  expmt: Jiwy-1
 *  date:  June 9, 2023
 *  time:  10:02:48 AM
 *  user:  20-sim 5.0 Student License
 *  from:  Universiteit Twente
 *  build: 5.0.2.12127
 **********************************************************/

/* This file describes the model functions
   that are supplied for computation.

   The model itself is the Tiltmodel.c file
*/

#ifndef TILT_MODEL_H
#define TILT_MODEL_H

/* Our own include files */
#include "xxtypes.h"

/* Simulation variables */
extern XXDouble Tilt_start_time;
extern XXDouble Tilt_finish_time;
extern XXDouble Tilt_step_size;
extern XXDouble Tilt_time;
extern XXInteger Tilt_steps;
extern XXBoolean Tilt_initialize;
extern XXBoolean Tilt_major;
extern XXBoolean Tilt_stop_simulation;

/* Model size constants */
#define xx_constants_size 0
#define xx_parameters_size 7
#define xx_initialvalues_size 3
#define xx_variables_size 12
#define xx_states_size 3

/* Variable arrays */
extern XXDouble Tilt_P[];
extern XXDouble Tilt_I[];
extern XXDouble Tilt_V[];
extern XXDouble Tilt_s[];
extern XXDouble Tilt_R[];


/* The names of the variables as used in the arrays above
   uncomment this if you need the names (see source file too)
extern XXString xx_parameter_names[];
extern XXString xx_initial_value_names[];
extern XXString xx_variable_names[];
extern XXString xx_state_names[];
extern XXString xx_rate_names[];
*/

/* Initialization methods */
/* Initialize complete model */
void TiltModelInitialize (void);
/* Initialize specific model values */
void TiltModelInitialize_parameters(void);
void TiltModelInitialize_initialvalues(void);
void TiltModelInitialize_states(void);
void TiltModelInitialize_variables(void);
void TiltModelTerminate (void);

/* Computation methods */
void TiltCalculateInitial (void);
void TiltCalculateStatic (void);
void TiltCalculateInput (void);
void TiltCalculateDynamic (void);
void TiltCalculateOutput (void);
void TiltCalculateFinal (void);


#endif
