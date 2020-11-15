/*
 * utils.c
 *
 *  Created on: 2020��11��10��
 *      Author: oashua
 */

#include "utils.h"
#include "xgpio.h"
void delay_ms(u16 ms)
{
	volatile u32 i;
	u8 j;
	ms *= 1000;
	for(i = 0; i < ms; i++)
		for(j = 0; j<10; j++);
}
void delay(u16 s)
{
	int i = 0;
	for(i = 0;i<s;i++)
		delay_ms(10000);
}
void delay_us(u16 delay)
{
	volatile u16 i;
	u8 j;
	for(i = 0; i < delay; i++)
		for(j = 0; j<10; j++);
}

XGpio zero_gpio;
void zero_init(u16 device_id)
{
	int status;
	status = XGpio_Initialize(&zero_gpio,device_id);
	XGpio_SetDataDirection(&zero_gpio,2,0x01);	//channel 2,input
}
u16 is_zero()
{
	return XGpio_DiscreteRead(&zero_gpio,2);	//channel 2
}

