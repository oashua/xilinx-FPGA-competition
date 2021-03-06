/*
 * wifi.h
 *
 *  Created on: 2020��11��10��
 *      Author: oashua
 */

#ifndef SRC_WIFI_H_
#define SRC_WIFI_H_



#endif /* SRC_WIFI_H_ */

#define UART_ID	XPAR_UARTLITE_0_DEVICE_ID
#define UART_ADDR XPAR_UARTLITE_0_BASEADDR
#include "xil_types.h"
#include "xuartlite.h"
u8 feedback[16];    //receive information
static XUartLite UartLiteInst;
void uart_init(u16 device_id);
void clearfifo(void);
void send(unsigned char *str);
void receive(u8 *result,u8 *feedback);
