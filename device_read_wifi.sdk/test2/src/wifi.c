/*
 * wifi.c
 *
 *  Created on: 2020锟斤拷11锟斤拷10锟斤拷
 *      Author: oashua
 */
#include "wifi.h"
#include "xuartlite.h"
#include "xuartlite_l.h"
#include "utils.h"


u8 AT[]="AT\r\n";
u8 AT_CWMODE[]="AT+CWMODE=3\r\n";
u8 AT_RST[]="AT+RST\r\n";
u8 AT_CIPMUX[]="AT+CIPMUX=1\r\n";
u8 AT_CWJAP[]="AT+CWJAP=\"deviceread\",\"deviceread\"\r\n";
u8 AT_CIPSERVER[]="AT+CIPSERVER=1,1234\r\n";
u8 AT_CIPSTO[]="AT+CIPSTO=600\r\n";
u8 AT_CIPSEND2[]="AT+CIPSEND=0,2\r\n";




void uart_init(u16 device_id)
{
    int status;
    status = XUartLite_Initialize(&UartLiteInst,device_id);
    if(status!=XST_SUCCESS)
        return XST_FAILURE;
    XUartLite_ResetFifos(&UartLiteInst);
    int i;
    for(i=0;;i++)
    {
        send(AT);
        delay_ms(100);
        XUartLite_Recv(&UartLiteInst,feedback,16);
        XUartLite_ResetFifos(&UartLiteInst);
        if(feedback[7]=='O'&&feedback[8]=='K')
            break;
    }
    clearfifo();
    for(i=0;;i++)
    {
        send(AT_CWMODE);
        delay_ms(100);
        XUartLite_Recv(&UartLiteInst,feedback,16);
        XUartLite_ResetFifos(&UartLiteInst);
        if(feedback[0]=='A'&&feedback[1]=='T')
            break;
    }
    clearfifo();
    for(int i=0;;i++)
    {
        send(AT_RST);      //esp8266閲嶅惎鐢熸晥涓� softAP+station 鍏卞瓨妯″紡
        delay_ms(100);
        XUartLite_Recv(&UartLiteInst,feedback,16);
        XUartLite_ResetFifos(&UartLiteInst);
        if(feedback[0]=='A'&&feedback[1]=='T')
            break;
    }
    clearfifo();
    send(AT_CWJAP);
    delay_ms(100);
    clearfifo();
    for(int i=0;;i++)
    {
        send(AT_CIPMUX);    //esp8266 璁剧疆涓哄杩炴帴妯″紡
        delay_ms(100);
        XUartLite_Recv(&UartLiteInst,feedback,16);
        XUartLite_ResetFifos(&UartLiteInst);
        if(feedback[0]=='A'&&feedback[1]=='T')
            break;
    }
    clearfifo();
    for(int i=0;;i++)
    {
        send(AT_CIPSERVER);   //灏唀sp8266璁剧疆涓簊erver妯″紡锛圱CP锛�
        delay_ms(100);
        XUartLite_Recv(&UartLiteInst,feedback,16);
        XUartLite_ResetFifos(&UartLiteInst);
        if(feedback[0]=='A'&&feedback[1]=='T')
            break;
    }
    clearfifo();
    send(AT_CIPSTO);   //timeout: 10min
    delay_ms(100);
    XUartLite_Recv(&UartLiteInst, feedback,16);
    XUartLite_ResetFifos(&UartLiteInst);
    delay_ms(100);

    clearfifo();
}

void clearfifo(void)
{
	int recv_fifo_flag;
	for(int j=0;; j++)
    {
		recv_fifo_flag=XUartLite_ReadReg(UartLiteInst.RegBaseAddress,XUL_STATUS_REG_OFFSET);
        if(recv_fifo_flag||0x03)
            break;
        else
        {
            XUartLite_Recv(&UartLiteInst,feedback,16);
            delay_ms(10);
        }
    }
}

void send(unsigned char *str)
{
    while(*str != '\0')
    {
        XUartLite_SendByte(UART_ADDR,*str);
        *str++;
    }
}

void receive(u8 *result,u8 *feedback)
{
    int i;
    u8 IPD[]="\r\n+IPD,0,n:";
    for(i=0;i<16;i++)
    {
        if(i<6&&feedback[i]!=IPD[i]) break;
        else if(i>10&&feedback[i]!='\r')
            result[i-11] = feedback[i];
    }
}

