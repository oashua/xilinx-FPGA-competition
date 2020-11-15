/*
 * ads8688.h
 *
 *  Created on: 2020��11��8��
 *      Author: oashua
 */

#ifndef SRC_ADS8688_H_
#define SRC_ADS8688_H_


#define GPIO_CHANNEL_1 1
#define GPIO_CHANNEL_2 2

#define OUT_DATA 0xffff//length of outdata is 16bit
#define RST_N 0x01  //length of rst is 1bit
#define ADDR 0x03  //length of addr is 2bit

#endif /* SRC_ADS8688_H_ */

#include "xgpio.h"

void ads8688_init(u16 device_id_1,u16 device_id_2);

u16 get_voltage(u16 addr);
