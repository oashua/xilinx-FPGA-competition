/*
 * ads8688.c
 *
 *  Created on: 2020��11��8��
 *      Author: oashua
 */

#include "ads8688.h"

XGpio gpio_0,gpio_1;

void ads8688_init(u16 device_id_0,u16 device_id_1)
{
	int status0,status1;
	status0 = XGpio_Initialize(&gpio_0,device_id_0);
	status1 = XGpio_Initialize(&gpio_1,device_id_1);
	if(status0 != XST_SUCCESS || status1 != XST_SUCCESS)
		print("set gpio failed.");
	XGpio_SetDataDirection(&gpio_0, GPIO_CHANNEL_1, ~RST_N);	//0 means output
	XGpio_SetDataDirection(&gpio_0, GPIO_CHANNEL_2, ~ADDR);	//0 means output
	XGpio_SetDataDirection(&gpio_1, GPIO_CHANNEL_1, OUT_DATA);	//1 means input
	XGpio_DiscreteWrite(&gpio_0, GPIO_CHANNEL_1, 0x00);//give a rise edge for rst to drive ads8688
	delay_ms(100);
	XGpio_DiscreteWrite(&gpio_0, GPIO_CHANNEL_1, 0x01);
}

u16 get_voltage(u16 addr)
{
	u16 value;
	XGpio_DiscreteWrite(&gpio_0, GPIO_CHANNEL_2, addr); //give channel for read
	value = XGpio_DiscreteRead(&gpio_1, GPIO_CHANNEL_1);
	return value;
}

