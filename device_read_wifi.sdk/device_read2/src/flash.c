/*
 * flash.c
 *
 *  Created on: 2020��11��7��
 *      Author: Lenovo
 */
#include "flash.h"
#include "xparameters.h"	/* SDK generated parameters */
#include "xqspips.h"		/* QSPI device driver */
#include "xil_printf.h"
/******************************************************************************/
static XQspiPs QspiInstance;

/*
 * The following variable allows a test value to be added to the values that
 * are written to the FLASH such that unique values can be generated to
 * guarantee the writes to the FLASH were successful
 */
//void test(void);


u8 ReadBuffer[MAX_DATA + DATA_OFFSET + DUMMY_SIZE];
u8 WriteBuffer[PAGE_SIZE + DATA_OFFSET];
void FlashWrite(XQspiPs *QspiPtr, u32 Address, u32 ByteCount, u8 Command)
{
	u8 WriteEnableCmd = { WRITE_ENABLE_CMD };
	u8 ReadStatusCmd[] = { READ_STATUS_CMD, 0 };  /* must send 2 bytes */
	u8 FlashStatus[2];

	/*
	 * Send the write enable command to the FLASH so that it can be
	 * written to, this needs to be sent as a seperate transfer before
	 * the write
	 */
	XQspiPs_PolledTransfer(QspiPtr, &WriteEnableCmd, NULL,
				sizeof(WriteEnableCmd));


	/*
	 * Setup the write command with the specified address and data for the
	 * FLASH
	 */
	WriteBuffer[COMMAND_OFFSET]   = Command;
	WriteBuffer[ADDRESS_1_OFFSET] = (u8)((Address & 0xFF0000) >> 16);
	WriteBuffer[ADDRESS_2_OFFSET] = (u8)((Address & 0xFF00) >> 8);
	WriteBuffer[ADDRESS_3_OFFSET] = (u8)(Address & 0xFF);

	/*
	 * Send the write command, address, and data to the FLASH to be
	 * written, no receive buffer is specified since there is nothing to
	 * receive
	 */
	XQspiPs_PolledTransfer(QspiPtr, WriteBuffer, NULL,
				ByteCount + OVERHEAD_SIZE);

	/*
	 * Wait for the write command to the FLASH to be completed, it takes
	 * some time for the data to be written
	 */
	while (1) {
		/*
		 * Poll the status register of the FLASH to determine when it
		 * completes, by sending a read status command and receiving the
		 * status byte
		 */
		XQspiPs_PolledTransfer(QspiPtr, ReadStatusCmd, FlashStatus,
					sizeof(ReadStatusCmd));

		/*
		 * If the status indicates the write is done, then stop waiting,
		 * if a value of 0xFF in the status byte is read from the
		 * device and this loop never exits, the device slave select is
		 * possibly incorrect such that the device status is not being
		 * read
		 */
		if ((FlashStatus[1] & 0x01) == 0) {
			break;
		}
	}
}

/******************************************************************************
*
* This function reads from the  serial FLASH connected to the
* QSPI interface.
*
* @param	QspiPtr is a pointer to the QSPI driver component to use.
* @param	Address contains the address to read data from in the FLASH.
* @param	ByteCount contains the number of bytes to read.
* @param	Command is the command used to read data from the flash. QSPI
*		device supports one of the Read, Fast Read, Dual Read and Fast
*		Read commands to read data from the flash.
*
* @return	None.
*
* @note		None.
*
******************************************************************************/
void FlashRead(XQspiPs *QspiPtr, u32 Address, u32 ByteCount, u8 Command)
{
	/*
	 * Setup the write command with the specified address and data for the
	 * FLASH
	 */
	WriteBuffer[COMMAND_OFFSET]   = Command;
	WriteBuffer[ADDRESS_1_OFFSET] = (u8)((Address & 0xFF0000) >> 16);
	WriteBuffer[ADDRESS_2_OFFSET] = (u8)((Address & 0xFF00) >> 8);
	WriteBuffer[ADDRESS_3_OFFSET] = (u8)(Address & 0xFF);

	if ((Command == FAST_READ_CMD) || (Command == DUAL_READ_CMD) ||
	    (Command == QUAD_READ_CMD)) {
		ByteCount += DUMMY_SIZE;
	}
	/*
	 * Send the read command to the FLASH to read the specified number
	 * of bytes from the FLASH, send the read command and address and
	 * receive the specified number of bytes of data in the data buffer
	 */
	XQspiPs_PolledTransfer(QspiPtr, WriteBuffer, ReadBuffer,
				ByteCount + OVERHEAD_SIZE);
}

/******************************************************************************
*
*
* This function erases the sectors in the  serial FLASH connected to the
* QSPI interface.
*
* @param	QspiPtr is a pointer to the QSPI driver component to use.
* @param	Address contains the address of the first sector which needs to
*		be erased.
* @param	ByteCount contains the total size to be erased.
*
* @return	None.
*
* @note		None.
*
******************************************************************************/
void FlashErase(XQspiPs *QspiPtr, u32 Address, u32 ByteCount)
{
	u8 WriteEnableCmd = { WRITE_ENABLE_CMD };
	u8 ReadStatusCmd[] = { READ_STATUS_CMD, 0 };  /* must send 2 bytes */
	u8 FlashStatus[2];
	int Sector;

	/*
	 * If erase size is same as the total size of the flash, use bulk erase
	 * command
	 */
	if (ByteCount == (NUM_SECTORS * SECTOR_SIZE)) {
		/*
		 * Send the write enable command to the FLASH so that it can be
		 * written to, this needs to be sent as a seperate transfer
		 * before the erase
		 */
		XQspiPs_PolledTransfer(QspiPtr, &WriteEnableCmd, NULL,
				  sizeof(WriteEnableCmd));

		/*
		 * Setup the bulk erase command
		 */
		WriteBuffer[COMMAND_OFFSET]   = BULK_ERASE_CMD;

		/*
		 * Send the bulk erase command; no receive buffer is specified
		 * since there is nothing to receive
		 */
		XQspiPs_PolledTransfer(QspiPtr, WriteBuffer, NULL,
					BULK_ERASE_SIZE);

		/*
		 * Wait for the erase command to the FLASH to be completed
		 */
		while (1) {
			/*
			 * Poll the status register of the device to determine
			 * when it completes, by sending a read status command
			 * and receiving the status byte
			 */
			XQspiPs_PolledTransfer(QspiPtr, ReadStatusCmd,
						FlashStatus,
						sizeof(ReadStatusCmd));

			/*
			 * If the status indicates the write is done, then stop
			 * waiting; if a value of 0xFF in the status byte is
			 * read from the device and this loop never exits, the
			 * device slave select is possibly incorrect such that
			 * the device status is not being read
			 */
			if ((FlashStatus[1] & 0x01) == 0) {
				break;
			}
		}

		return;
	}

	/*
	 * If the erase size is less than the total size of the flash, use
	 * sector erase command
	 */
	for (Sector = 0; Sector < ((ByteCount / SECTOR_SIZE) + 1); Sector++) {
		/*
		 * Send the write enable command to the SEEPOM so that it can be
		 * written to, this needs to be sent as a seperate transfer
		 * before the write
		 */
		XQspiPs_PolledTransfer(QspiPtr, &WriteEnableCmd, NULL,
					sizeof(WriteEnableCmd));

		/*
		 * Setup the write command with the specified address and data
		 * for the FLASH
		 */
		WriteBuffer[COMMAND_OFFSET]   = SEC_ERASE_CMD;
		WriteBuffer[ADDRESS_1_OFFSET] = (u8)(Address >> 16);
		WriteBuffer[ADDRESS_2_OFFSET] = (u8)(Address >> 8);
		WriteBuffer[ADDRESS_3_OFFSET] = (u8)(Address & 0xFF);

		/*
		 * Send the sector erase command and address; no receive buffer
		 * is specified since there is nothing to receive
		 */
		XQspiPs_PolledTransfer(QspiPtr, WriteBuffer, NULL,
					SEC_ERASE_SIZE);

		/*
		 * Wait for the sector erse command to the FLASH to be completed
		 */
		while (1) {
			/*
			 * Poll the status register of the device to determine
			 * when it completes, by sending a read status command
			 * and receiving the status byte
			 */
			XQspiPs_PolledTransfer(QspiPtr, ReadStatusCmd,
						FlashStatus,
						sizeof(ReadStatusCmd));

			/*
			 * If the status indicates the write is done, then stop
			 * waiting, if a value of 0xFF in the status byte is
			 * read from the device and this loop never exits, the
			 * device slave select is possibly incorrect such that
			 * the device status is not being read
			 */
			if ((FlashStatus[1] & 0x01) == 0) {
				break;
			}
		}

		Address += SECTOR_SIZE;
	}
}

/******************************************************************************
*
* This function reads serial FLASH ID connected to the SPI interface.
*
* @param	None.
*
* @return	XST_SUCCESS if read id, otherwise XST_FAILURE.
*
* @note		None.
*
******************************************************************************/
int FlashReadID(void)
{
	int Status;

	/*
	 * Read ID in Auto mode.
	 */
	WriteBuffer[COMMAND_OFFSET]   = READ_ID;
	WriteBuffer[ADDRESS_1_OFFSET] = 0x23;		/* 3 dummy bytes */
	WriteBuffer[ADDRESS_2_OFFSET] = 0x08;
	WriteBuffer[ADDRESS_3_OFFSET] = 0x09;

	Status = XQspiPs_PolledTransfer(&QspiInstance, WriteBuffer, ReadBuffer,
				RD_ID_SIZE);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	xil_printf("Flash  JEDEC ID=0x%x 0x%x 0x%x\n\r", ReadBuffer[1], ReadBuffer[2],
		   ReadBuffer[3]);

	return XST_SUCCESS;
}


int FlashReadUID(void)
{
	int Status;

	/*
	 * Read ID in Auto mode.
	 */
	WriteBuffer[COMMAND_OFFSET]   = 0x4B;
	WriteBuffer[ADDRESS_1_OFFSET] = 0x23;		/* 3 dummy bytes */
	WriteBuffer[ADDRESS_2_OFFSET] = 0x08;
	WriteBuffer[ADDRESS_3_OFFSET] = 0x09;

	Status = XQspiPs_PolledTransfer(&QspiInstance, WriteBuffer, ReadBuffer,
				16);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	xil_printf("Flash Unique ID=0x%x 0x%x 0x%x 0x%x 0x%x 0x%x 0x%x 0x%x\n\r",ReadBuffer[5], ReadBuffer[6], ReadBuffer[7], ReadBuffer[8], ReadBuffer[9], ReadBuffer[10], ReadBuffer[11], ReadBuffer[12]);

	return XST_SUCCESS;
}

void WriteIn(int data[],u32 ADDRESS)   //���ݴ�С��define Pagesize
{
		int Status;
		u8 *BufferPtr;
		u8 UniqueValue;
		int Count;
		int Page;
		XQspiPs_Config *QspiConfig;
		XQspiPs *QspiInstancePtr;
		u16 QspiDeviceId;

		QspiInstancePtr=&QspiInstance;
		QspiDeviceId=QSPI_DEVICE_ID;
		/*
		 * Initialize the QSPI driver so that it's ready to use
		 */
		QspiConfig = XQspiPs_LookupConfig(QspiDeviceId);
		if (NULL == QspiConfig) {
			return XST_FAILURE;
		}

		Status = XQspiPs_CfgInitialize(QspiInstancePtr, QspiConfig,
						QspiConfig->BaseAddress);
		if (Status != XST_SUCCESS) {
			return XST_FAILURE;
		}

		/*
		 * Perform a self-test to check hardware build
		 */
		Status = XQspiPs_SelfTest(QspiInstancePtr);
		if (Status != XST_SUCCESS) {
			return XST_FAILURE;
		}

		/*
		 * Initialize the write buffer for a pattern to write to the FLASH
		 * and the read buffer to zero so it can be verified after the read,
		 * the test value that is added to the unique value allows the value
		 * to be changed in a debug environment to guarantee
		 */
		// ��������Ҫд������ݣ�
		UniqueValue=UNIQUE_VALUE;
		for (Count = 0; Count < PAGE_SIZE;
		     Count++) {
			WriteBuffer[DATA_OFFSET + Count] = (u16)(data[Count]);
		}
		//��������ȫ��Ϊ��
		memset(ReadBuffer, 0x00, sizeof(ReadBuffer));

		/*
		 * Set Manual Start and Manual Chip select options and drive HOLD_B
		 * pin high.
		 */
		XQspiPs_SetOptions(QspiInstancePtr, XQSPIPS_MANUAL_START_OPTION |
				XQSPIPS_FORCE_SSELECT_OPTION |
				XQSPIPS_HOLD_B_DRIVE_OPTION);

		/*
		 * Set the prescaler for QSPI clock
		 */
		XQspiPs_SetClkPrescaler(QspiInstancePtr, XQSPIPS_CLK_PRESCALE_8);

		/*
		 * Assert the FLASH chip select.
		 */
		XQspiPs_SetSlaveSelect(QspiInstancePtr);


	//	FlashReadUID();
	//	FlashReadID();
		/*
		 * Erase the flash.
		 */
		FlashErase(QspiInstancePtr, ADDRESS, MAX_DATA);

		// ������������
		FlashRead(QspiInstancePtr, ADDRESS, MAX_DATA, FAST_READ_CMD);
		//DUAL_READ_CMD QUAD_READ_CMD �����ԣ�������ȡ


		/*
		 * Setup a pointer to the start of the data that was read into the read
		 * buffer and verify the data read is the data that was written
		 * ����һ��ָ�룬ָ�򱻶���������������ݵĿ�ʼλ��
	     * ��֤��ȡ��������д�������
		 */
		BufferPtr = &ReadBuffer[DATA_OFFSET + DUMMY_SIZE];
	    //��ʾ�����������
		xil_printf("Display the FLASH after Erase and before Writing \r\n");
		for (Count = 0; Count < MAX_DATA; Count++) {
			xil_printf("%2x ",BufferPtr[Count]);

			if (Count%16==15)xil_printf("\r\n");
			}

		xil_printf("\r\n");
		/*
		 * Write the data in the write buffer to the serial FLASH a page at a
		 * time, starting from ADDRESS
		 * һ������д�뻺�����е�����д�뵽��������ҳ��
	     * ��ADDRESS��ʼ
		 */
		for (Page = 0; Page < PAGE_COUNT; Page++) {
			FlashWrite(QspiInstancePtr, (Page * PAGE_SIZE) + ADDRESS,
				   PAGE_SIZE, WRITE_CMD);
		}

		/*
		 * Read the contents of the FLASH from ADDRESS, using Fast Read
		 * command
		 * ʹ�ÿ��ٶ�ȡ�����ADDRESS��ȡFLASH������
		 */
		memset(ReadBuffer, 0x00, sizeof(ReadBuffer));//������������

}
	///////////////////////////////////////////////////////////////////////////////////////////////////////////
//	int Status;
//	u8 *BufferPtr;
//	u8 UniqueValue;
//	int Count;
//	int Page;
//	XQspiPs_Config *QspiConfig;
//	XQspiPs *QspiInstancePtr;
//	u16 QspiDeviceId;
//
//	QspiInstancePtr=&QspiInstance;
//	QspiDeviceId=QSPI_DEVICE_ID;
//	/*
//	 * Initialize the QSPI driver so that it's ready to use
//	 */
//	QspiConfig = XQspiPs_LookupConfig(QspiDeviceId);
//	if (NULL == QspiConfig) {
//		return XST_FAILURE;
//	}
//
//	Status = XQspiPs_CfgInitialize(QspiInstancePtr, QspiConfig,
//					QspiConfig->BaseAddress);
//	if (Status != XST_SUCCESS) {
//		return XST_FAILURE;
//	}
//
//	/*
//	 * Perform a self-test to check hardware build
//	 */
//	Status = XQspiPs_SelfTest(QspiInstancePtr);
//	if (Status != XST_SUCCESS) {
//		return XST_FAILURE;
//	}
//
//	/*
//	 * Initialize the write buffer for a pattern to write to the FLASH
//	 * and the read buffer to zero so it can be verified after the read,
//	 * the test value that is added to the unique value allows the value
//	 * to be changed in a debug environment to guarantee
//	 */
//	// ��������Ҫд������ݣ�
//	UniqueValue=UNIQUE_VALUE;
//	for (Count = 0; Count < size;
//	     Count++) {
//		WriteBuffer[DATA_OFFSET + Count] = (u16)(data[Count]);
//	}
//	//��������ȫ��Ϊ��
//	memset(ReadBuffer, 0x00, sizeof(ReadBuffer));
//
//	/*
//	 * Set Manual Start and Manual Chip select options and drive HOLD_B
//	 * pin high.
//	 */
//	XQspiPs_SetOptions(QspiInstancePtr, XQSPIPS_MANUAL_START_OPTION |
//			XQSPIPS_FORCE_SSELECT_OPTION |
//			XQSPIPS_HOLD_B_DRIVE_OPTION);
//
//	/*
//	 * Set the prescaler for QSPI clock
//	 */
//	XQspiPs_SetClkPrescaler(QspiInstancePtr, XQSPIPS_CLK_PRESCALE_8);
//
//	/*
//	 * Assert the FLASH chip select.
//	 */
//	XQspiPs_SetSlaveSelect(QspiInstancePtr);
//
//
////	FlashReadUID();
////	FlashReadID();
//	/*
//	 * Erase the flash.
//	 */
//	FlashErase(QspiInstancePtr, ADDRESS, MAX_DATA);
//
//	// ������������
//	FlashRead(QspiInstancePtr, ADDRESS, MAX_DATA, FAST_READ_CMD);
//	//DUAL_READ_CMD QUAD_READ_CMD �����ԣ�������ȡ
//
//
//	/*
//	 * Setup a pointer to the start of the data that was read into the read
//	 * buffer and verify the data read is the data that was written
//	 * ����һ��ָ�룬ָ�򱻶���������������ݵĿ�ʼλ��
//     * ��֤��ȡ��������д�������
//	 */
//	BufferPtr = &ReadBuffer[DATA_OFFSET + DUMMY_SIZE];
//    //��ʾ�����������
//	xil_printf("Display the FLASH after Erase and before Writing \r\n");
//	for (Count = 0; Count < size; Count++) {
//		xil_printf("%4x ",BufferPtr[Count]);
//
//		if (Count%16==15)xil_printf("\r\n");
//		}
//
//	xil_printf("\r\n");
//	/*
//	 * Write the data in the write buffer to the serial FLASH a page at a
//	 * time, starting from ADDRESS
//	 * һ������д�뻺�����е�����д�뵽��������ҳ��
//     * ��ADDRESS��ʼ
//	 */
//	for (Page = 0; Page < PAGE_COUNT; Page++) {
//		FlashWrite(QspiInstancePtr, (Page * size) + ADDRESS,
//			   PAGE_SIZE, WRITE_CMD);
//	}
//
//	/*
//	 * Read the contents of the FLASH from ADDRESS, using Fast Read
//	 * command
//	 * ʹ�ÿ��ٶ�ȡ�����ADDRESS��ȡFLASH������
//	 */
//	memset(ReadBuffer, 0x00, sizeof(ReadBuffer));//������������

//}

u8 *ReadOut(u32 ADDRESS)
{
	int Status;
	u8 *BufferPtr;
//	u8 UniqueValue;
	int Count;
	XQspiPs_Config *QspiConfig;
	XQspiPs *QspiInstancePtr;
	u16 QspiDeviceId;

	QspiInstancePtr=&QspiInstance;
	QspiDeviceId=QSPI_DEVICE_ID;
	/*
	 * Initialize the QSPI driver so that it's ready to use
	 */
	QspiConfig = XQspiPs_LookupConfig(QspiDeviceId);
	if (NULL == QspiConfig) {
		return XST_FAILURE;
	}

	Status = XQspiPs_CfgInitialize(QspiInstancePtr, QspiConfig,
					QspiConfig->BaseAddress);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/*
	 * Perform a self-test to check hardware build
	 */
	Status = XQspiPs_SelfTest(QspiInstancePtr);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/*
	 * Initialize the write buffer for a pattern to write to the FLASH
	 * and the read buffer to zero so it can be verified after the read,
	 * the test value that is added to the unique value allows the value
	 * to be changed in a debug environment to guarantee
	 */
	memset(ReadBuffer, 0x00, sizeof(ReadBuffer));//������������
	FlashRead(QspiInstancePtr, ADDRESS, MAX_DATA, FAST_READ_CMD);
	//DUAL_READ_CMD QUAD_READ_CMD �����ԣ�������ȡ

	/*
	 * Setup a pointer to the start of the data that was read into the read
	 * buffer and verify the data read is the data that was written
	 */
	BufferPtr = &ReadBuffer[DATA_OFFSET + DUMMY_SIZE];

	// xil_printf("Display the FLASH after  Writing \r\n");
// 	for (Count = 0; Count < MAX_DATA; Count++) {
// 		xil_printf("%2x ",BufferPtr[Count]);

// 		if (Count%16==15)xil_printf("\r\n");
// 		}

// 	xil_printf("\r\n");
// //	FlashReadUID();
// //	FlashReadID();
// 	xil_printf("Successfully ran QSPI FLASH Erase/read/write Test\r\n");
	return BufferPtr;
}


