

/****************************************************************
 * WARNING this file is automatically generated DO NOT EDIT IT! *
 *                                                              *
 * FILE NAME: etpu_gpio_auto.h     COPYRIGHT (c) Freescale 2004 *
 *                                      All Rights Reserved     *
 * This file generated by:                                      *
 * $RCSfile: etpuc_gpio.c,v $ $Revision: 1.3 $
 *                                                              *
 * This file provides an interface between eTPU code and CPU    *
 * code. All references to the GPIO function should be made with*
 * information in this file. This allows only symbolic          *
 * information to be referenced which allows the eTPU code to be*
 * optimized without effecting the CPU code.                    *
 ****************************************************************/
#ifndef _ETPU_GPIO_AUTO_H_
#define _ETPU_GPIO_AUTO_H_

/* Function Configuration Information */
#define FS_ETPU_GPIO_FUNCTION_NUMBER  0 
#define FS_ETPU_GPIO_TABLE_SELECT 0 
#define FS_ETPU_GPIO_NUM_PARMS 0x0010 

/* Host Service Request Definitions */
#define FS_ETPU_GPIO_OUTPUT_HIGH 7 
#define FS_ETPU_GPIO_OUTPUT_LOW 6 
#define FS_ETPU_GPIO_INPUT_IMMED 5 
#define FS_ETPU_GPIO_INPUT_RISING 4 
#define FS_ETPU_GPIO_INPUT_FALLING 3 
#define FS_ETPU_GPIO_INPUT_EITHER 2 
#define FS_ETPU_GPIO_INPUT_MATCH 1 

/* Parameter and variable definitions */
#define FS_ETPU_GPIO_PINSTATE_OFFSET  0x0005
#define FS_ETPU_GPIO_INPUT_MATCH_PERIOD_OFFSET  0x0001

#endif /* _ETPU_GPIO_AUTO_H_ */

