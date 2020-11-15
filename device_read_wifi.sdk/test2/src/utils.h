/*
 * utils.h
 *
 *  Created on: 2020��11��10��
 *      Author: oashua
 */

#ifndef SRC_UTILS_H_
#define SRC_UTILS_H_



#endif /* SRC_UTILS_H_ */
#define ZERO_ID XPAR_GPIO_1_DEVICE_ID

#include "xil_types.h"

void delay_ms(u16 ms);
void delay_us(u16 delay);
void zero_init(u16 device_id);
u16 is_zero(void);
