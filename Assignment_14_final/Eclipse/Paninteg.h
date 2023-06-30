/**********************************************************
 * This file is generated by 20-sim ANSI-C Code Generator
 *
 *  file:  Paninteg.h
 *  model: PositionControllerPan
 *  expmt: Jiwy-1
 *  date:  June 9, 2023
 *  time:  9:44:13 AM
 *  user:  20-sim 5.0 Student License
 *  from:  Universiteit Twente
 *  build: 5.0.2.12127
 **********************************************************/

/* This file describes the integration methods
that are supplied for computation.

   Currently the following methods are supported:
   * Euler
   * RungeKutta2
   * RungeKutta4
   but it is easy for the user to add their own
   integration methods with these two as an example.
*/

#ifndef PAN_INTEG_H
#define PAN_INTEG_H

/* 20-sim include files */
#include "xxtypes.h"

/* the chosen integration method */
#define Discrete_METHOD

/* the integration methods */
void PanDiscreteInitialize (void);
void PanDiscreteTerminate (void);
void PanDiscreteStep (void);

extern XXBoolean Pan_major;

#endif

