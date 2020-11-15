/******************************************************************************
*
* Copyright (C) 2009 - 2014 Xilinx, Inc.  All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* Use of the Software is limited solely to applications:
* (a) running on a Xilinx device, or
* (b) that interact with a Xilinx device through a bus or interconnect.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
* XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
* OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*
* Except as contained in this notice, the name of the Xilinx shall not be used
* in advertising or otherwise to promote the sale, use or other dealings in
* this Software without prior written authorization from Xilinx.
*
******************************************************************************/

/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "xuartlite.h"
#include "xgpio.h"
#include "xparameters.h"
#include "xscugic.h"


#include "ads8688.h"
#include "utils.h"
#include "wifi.h"

#define UART_DEVICE_ID XPAR_UARTLITE_0_DEVICE_ID
#define AD_DEVICE_ID_0 XPAR_GPIO_0_DEVICE_ID
#define AD_DEVICE_ID_1 XPAR_GPIO_1_DEVICE_ID
#define ZERO_DEVICE_ID XPAR_GPIO_1_DEVICE_ID
#define INT_DEVICE_ID XPAR_PS7_SCUGIC_0_DEVICE_ID

#define UARTLITE_IRPT_INTR	  XPAR_FABRIC_AXI_UARTLITE_0_INTERRUPT_INTR


void test_sample(void);
void init(void);
int int_init(u16 device_id, XUartLite *uartliteInstancePtr);
static void Uartlite_intr_Handler(void *BaseAddress);
void test_talk(void);

u16 addr = 0;
u16 v;
u16 over_zero;
int sample_cnt;
int cnt_flag;
int main()
{
    init_platform();

    print("Hello World\n\r");
    init();
    while(1)
    {
    	test_sample();
    }
    cleanup_platform();
    return 0;
}


void test_sample()
{

//	if(is_zero()&&sample_cnt>100)
//	{
//
//		sample_cnt = 0;
//	}
//	printf("sample num: %d\n",sample_cnt);
//	sample_cnt++;
	addr = (addr+1)%3;
	v = get_voltage(addr);
	switch(addr)
	{
	case 0:
		printf("v0: %d\t",v);
		break;
	case 1:
		printf("v1: %d\t",v);
		break;
	case 2:
		printf("v2: %d\n",v);
		break;
	}

}
void init(void)
{
	ads8688_init(AD_DEVICE_ID_0,AD_DEVICE_ID_1);
	zero_init(ZERO_DEVICE_ID);
	uart_init(UART_DEVICE_ID);
	int status;
	// status = int_init(INT_DEVICE_ID,&UartLiteInst);
	status = int_init(INT_DEVICE_ID);
}
// int int_init(u16 device_id,XUartLite *uartliteInstancePtr)
int int_init(u16 device_id)
{
	XScuGic_Config *IntcConfig;
	XScuGic INTCInst;
	int status;
	//Enable interrupt
	XUartLite_EnableInterrupt(&UartLiteInst);
	// Interrupt controller initialisation
	IntcConfig = XScuGic_LookupConfig(device_id);
	status = XScuGic_CfgInitialize(&INTCInst, IntcConfig, IntcConfig->CpuBaseAddress);
	if(status != XST_SUCCESS) return XST_FAILURE;

	// Call to interrupt setup
	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,
			 	 	 	 	 	 (Xil_ExceptionHandler)XScuGic_InterruptHandler,
			 	 	 	 	 	 &INTCInst);
	Xil_ExceptionEnable();


	//Connect uartlite interrupt to handler
	status = XScuGic_Connect(&INTCInst,
							  UARTLITE_IRPT_INTR,
					  	  	 (Xil_ExceptionHandler)Uartlite_intr_Handler,
					  	  	 (void *)&UartLiteInst);
	if(status != XST_SUCCESS) return XST_FAILURE;

	// Enable uartlite interrupts interrupt
	XUartLite_EnableInterrupt(&UartLiteInst);
	XScuGic_SetPriorityTriggerType(&INTCInst, UARTLITE_IRPT_INTR,
					0xA0, 0x3);

	// Enable uartlite and timer interrupts in the controller
	XScuGic_Enable(&INTCInst, UARTLITE_IRPT_INTR);
	return XST_SUCCESS;
}

static void Uartlite_intr_Handler(void *BaseAddress)
{
    XUartLite_DisableInterrupt(BaseAddress);               //关闭中断
   // u8 esp8266_0_Connect[]="AT+CIPSEND=8\r\n";
    delay_ms(1000);
	XUartLite_Recv(BaseAddress,feedback, 16);//接收数据
	//do something
}
