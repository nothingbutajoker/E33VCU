/*
 * Code generated for Simulink model E33_VCU_simulink.
 *
 * FILE    : sci.h
 *
 * VERSION : 1.70
 *
 * DATE    : Sun Nov 26 16:56:11 2023
 *
 * Copyright 2011-2012 ECUCoder. All Rights Reserved.
 */

#ifndef RTW_HEADER_sci_h_
#define RTW_HEADER_sci_h_
#include "MPC5554.h"
#include "Std_Types.h"
#define SCIAENABLE                     0
#define SCIBENABLE                     0
#define ESCI(eSCIn)                    (*( struct ESCI_tag *) (0xFFFB0000+eSCIn*0x4000))

extern void ec_scia_init(void);
extern void ec_scib_init(void);
extern uint8 ec_sci_receive(uint8 Module);
extern void ec_sci_transmit(uint8 Module, uint8 Datalength, uint8 Tx_Buffer[]);

#endif                                 /* RTW_HEADER_sci_h_ */

/* File trailer for ECUCoder generated file sci.h.
 *
 * [EOF]
 */
