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
#include "sleep.h"


#include "ads8688.h"
#include "utils.h"
#include "wifi.h"

#define UART_DEVICE_ID XPAR_UARTLITE_0_DEVICE_ID
#define AD_DEVICE_ID_0 XPAR_GPIO_0_DEVICE_ID
#define AD_DEVICE_ID_1 XPAR_GPIO_1_DEVICE_ID
#define ZERO_DEVICE_ID XPAR_GPIO_1_DEVICE_ID
#define INT_DEVICE_ID XPAR_PS7_SCUGIC_0_DEVICE_ID

#define DATA_LENGTH 256

#define UARTLITE_IRPT_INTR	  XPAR_FABRIC_AXI_UARTLITE_0_INTERRUPT_INTR


u16 device_data[6][DATA_LENGTH];
u16 sample_data[3][DATA_LENGTH];
u8 kind_ptr;
u8 read_result[4];
u8 send_data[2];
u8 work_mode;
void test_sample(void);
int init(void);
int int_init(u16 device_id, XUartLite *uartliteInstancePtr);
int int_init2(u16 device_id, XUartLite *uartliteInstancePtr);
static void Uartlite_intr_Handler(void *BaseAddress);
int InterruptSystemSetup(XScuGic *XScuGicInstancePtr);
void test_talk(void);
void sample(void);
void work(void);
void store(void);
void add_w(u8 *data);


XScuGic INTCInst;
u16 addr = 0;
u16 v;
u16 over_zero;
int sample_cnt;
int cnt_flag=0;
int main()
{
    init_platform();
	delay_ms(4000);
    printf("Hello World\n\r");
    init();
	send("AT+CIPSEND=0,6\r\n");
	// delay_ms(500);
	send("hello.\r\n");
	usleep(500000);
	printf("%s\n",feedback);
	while(1)
	{
		delay(50);
		XUartLite_Recv(&UartLiteInst,feedback,16);
		 printf("%s\n",feedback);
		sample();
		if(feedback[0]=='w')
			work();
		else if(feedback[0]=='s')
			store();
//      XUartLite_ResetFifos(&UartLiteInst);
//		clearfifo();
	}
	cleanup_platform();
    return 0;
}


void test_sample()
{
	u16 a,b;
	a = is_zero();
	b = is_zero();
	if(a==0&&b==1) //when we find rising edge, start a new cycle of sampling
	{
		printf("%d\n",sample_cnt);
		sample_cnt=0;
	}
	sample_cnt++;
//	addr = (addr+1)%3;
//	v = get_voltage(addr);
//	switch(addr)
//	{
//	case 0:
//		printf("v0: %d\t",v);
//		break;
//	case 1:
//		printf("v1: %d\t",v);
//		break;
//	case 2:
//		printf("v2: %d\n",v);
//		break;
//	}
}


int init(void)
{
	ads8688_init(AD_DEVICE_ID_0,AD_DEVICE_ID_1);
	zero_init(ZERO_DEVICE_ID);
	uart_init(UART_DEVICE_ID);



	/////////////////////
	//load_device_data();  device_data and kind_ptr     -------------------@HHT
	/////////////////////



	delay(20);
	// int status;
	// status = int_init2(INT_DEVICE_ID,&UartLiteInst);
	// if(status != XST_SUCCESS) return XST_FAILURE;

}


int InterruptSystemSetup(XScuGic *XScuGicInstancePtr)
{
	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,
			 	 	 	 	 	 (Xil_ExceptionHandler)XScuGic_InterruptHandler,
			 	 	 	 	 	 XScuGicInstancePtr);
	Xil_ExceptionEnable();
	return XST_SUCCESS;
}

int int_init2(u16 device_id, XUartLite *uartliteInstancePtr)
{
	XScuGic_Config *IntcConfig;
	int status;
	IntcConfig = XScuGic_LookupConfig(device_id);
	// if (NULL == IntcConfig)
	// 	return XST_FAILURE;
	status = XScuGic_CfgInitialize(&INTCInst, IntcConfig, 
									IntcConfig->CpuBaseAddress);
	if(status!=XST_SUCCESS) return XST_FAILURE;
	XScuGic_SetPriorityTriggerType(&INTCInst, UARTLITE_IRPT_INTR,
						0xA0, 0x3);
	// Xil_ExceptionInit();
	// Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,
	// 							(Xil_ExceptionHandler)XScuGic_InterruptHandler,
	// 							&INTCInst);
	// Xil_ExceptionEnable();
	status = InterruptSystemSetup(&INTCInst);
	if(status!=XST_SUCCESS) return XST_FAILURE;
	status = XScuGic_Connect(&INTCInst,
							UARTLITE_IRPT_INTR,
							(Xil_ExceptionHandler)Uartlite_intr_Handler,
							(void *)uartliteInstancePtr);
	if(status!=XST_SUCCESS) return XST_FAILURE;	
	XUartLite_EnableInterrupt(uartliteInstancePtr);
	XScuGic_Enable(&INTCInst,UARTLITE_IRPT_INTR);
	return XST_SUCCESS;
}

int int_init(u16 device_id,XUartLite *uartliteInstancePtr)
{
	XScuGic_Config *IntcConfig;
	int status;
	//Enable interrupt
	XUartLite_EnableInterrupt(uartliteInstancePtr);
	// Interrupt controller initialisation
	IntcConfig = XScuGic_LookupConfig(device_id);
	status = XScuGic_CfgInitialize(&INTCInst, IntcConfig, IntcConfig->CpuBaseAddress);
	if(status != XST_SUCCESS) return XST_FAILURE;

	status = InterruptSystemSetup(&INTCInst);
	if(status != XST_SUCCESS) return XST_FAILURE;


	//Connect uartlite interrupt to handler
	status = XScuGic_Connect(&INTCInst,
							UARTLITE_IRPT_INTR,
							(Xil_ExceptionHandler)Uartlite_intr_Handler,
							(void *)uartliteInstancePtr);
	if(status != XST_SUCCESS) return XST_FAILURE;

	// Enable uartlite interrupts interrupt
	XUartLite_EnableInterrupt(uartliteInstancePtr);
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
	printf("%s",feedback);
	send("AT+CIPSEND=0,5\r\n");
	send(&feedback);
	XUartLite_EnableInterrupt(BaseAddress);
	//do something
}

void sample()
{
	while(is_zero()==1)
		if(is_zero()==0) break;
	while(is_zero()==0)
		if(is_zero()==1) break;
	
	for(int i=0;i<DATA_LENGTH;i++)
	{
		for(int channel=0;channel<3;channel++)
			sample_data[channel][i] = get_voltage(channel);
		delay_us(393);
	}
	for(int i=0;i<DATA_LENGTH;i++)
	{
		printf("%d\n",sample_data[0][i]);
	}
	printf("---------------\n");
}

//@param device_data[6][DATA_LENGTH] stroed device sample data
//@param sample_data[3][DATA_LENGTH] current sample data
void work()
{
	//signal similarity algorithm
	//signal_processing(&read_result);					-------------@HHT
	send("AT+CIPSEND=0,5\r\n");
	add_w(read_result);
	send(read_result);
}
void store()
{
	for(int i=0;i<DATA_LENGTH;i++)
		device_data[kind_ptr][i]=sample_data[0][i];
	send_data[0] = 's';
	send_data[1] = kind_ptr;

	send("AT+CIPSEND=0,2\r\n");
	send(send_data);
	kind_ptr=(kind_ptr+1)%6;
	//store kind ptr and new device data to falsh      ------------@HHT
	work_mode = 'w';
}
void add_w(u8 *data)
{
	for(int i=3;i>0;i--)
		data[i] = data[i-1];
	data[0] = 'w';
}
