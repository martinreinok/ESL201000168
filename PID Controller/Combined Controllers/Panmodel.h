/**********************************************************
 * This file is generated by 20-sim ANSI-C Code Generator
 *
 *  file:  xxmodel.h
 *  subm:  PositionControllerPan
 *  model: PositionControllerPan
 *  expmt: Jiwy-1
 *  date:  June 9, 2023
 *  time:  9:44:13 AM
 *  user:  20-sim 5.0 Student License
 *  from:  Universiteit Twente
 *  build: 5.0.2.12127
 **********************************************************/

/* This file describes the model functions
   that are supplied for computation.

   The model itself is the Panmodel.c file
*/

#ifndef PAN_MODEL_H
#define PAN_MODEL_H

/* Our own include files */
#include "xxtypes.h"

/* Simulation variables */
extern XXDouble Pan_start_time;
extern XXDouble Pan_finish_time;
extern XXDouble Pan_step_size;
extern XXDouble Pan_time;
extern XXInteger Pan_steps;
extern XXBoolean Pan_initialize;
extern XXBoolean Pan_major;
extern XXBoolean Pan_stop_simulation;

/* Model size constants */
#define xx_constants_size 0
#define xx_parameters_size 7
#define xx_initialvalues_size 3
#define xx_variables_size 10
#define xx_states_size 3

/* Variable arrays */
extern XXDouble Pan_P[];
extern XXDouble Pan_I[];
extern XXDouble Pan_V[];
extern XXDouble Pan_s[];
extern XXDouble Pan_R[];


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
void PanModelInitialize (void);
/* Initialize specific model values */
void PanModelInitialize_parameters(void);
void PanModelInitialize_initialvalues(void);
void PanModelInitialize_states(void);
void PanModelInitialize_variables(void);
void PanModelTerminate (void);

/* Computation methods */
void PanCalculateInitial (void);
void PanCalculateStatic (void);
void PanCalculateInput (void);
void PanCalculateDynamic (void);
void PanCalculateOutput (void);
void PanCalculateFinal (void);


#endif

