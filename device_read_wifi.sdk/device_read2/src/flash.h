/*
 * flash.h
 *
 *  Created on: 2020��11��7��
 *      Author: Lenovo
 */

#ifndef SRC_FLASH_H_
#define SRC_FLASH_H_


/***************************** Include Files *********************************/

#include "xparameters.h"	/* SDK generated parameters */
#include "xqspips.h"		/* QSPI device driver */
#include "xil_printf.h"

/************************** Constant Definitions *****************************/

/*
 * The following constants map to the XPAR parameters created in the
 * xparameters.h file. They are defined here such that a user can easily
 * change all the needed parameters in one place.
 */
#define QSPI_DEVICE_ID		XPAR_XQSPIPS_0_DEVICE_ID

/*
 * The following constants define the commands which may be sent to the FLASH
 * device.
 */
#define WRITE_STATUS_CMD	0x01
#define WRITE_CMD		0x02
#define READ_CMD		0x03
#define WRITE_DISABLE_CMD	0x04
#define READ_STATUS_CMD		0x05
#define WRITE_ENABLE_CMD	0x06
#define FAST_READ_CMD		0x0B
#define DUAL_READ_CMD		0x3B
#define QUAD_READ_CMD		0x6B
#define BULK_ERASE_CMD		0xC7
#define	SEC_ERASE_CMD		0xD8
#define READ_ID			0x9F

/*
 * The following constants define the offsets within a FlashBuffer data
 * type for each kind of data.  Note that the read data offset is not the
 * same as the write data because the QSPI driver is designed to allow full
 * duplex transfers such that the number of bytes received is the number
 * sent and received.
 */
#define COMMAND_OFFSET		0 /* FLASH instruction */
#define ADDRESS_1_OFFSET	1 /* MSB byte of address to read or write */
#define ADDRESS_2_OFFSET	2 /* Middle byte of address to read or write */
#define ADDRESS_3_OFFSET	3 /* LSB byte of address to read or write */
#define DATA_OFFSET		4 /* Start of Data for Read/Write */
#define DUMMY_OFFSET		4 /* Dummy byte offset for fast, dual and quad
				     reads */
#define DUMMY_SIZE		1 /* Number of dummy bytes for fast, dual and
				     quad reads */
#define RD_ID_SIZE		4 /* Read ID command + 3 bytes ID response */
#define BULK_ERASE_SIZE		1 /* Bulk Erase command size */
#define SEC_ERASE_SIZE		4 /* Sector Erase command + Sector address */

/*
 * The following constants specify the extra bytes which are sent to the
 * FLASH on the QSPI interface, that are not data, but control information
 * which includes the command and address
 */
#define OVERHEAD_SIZE		4

/*
 * The following constants specify the page size, sector size, and number of
 * pages and sectors for the FLASH.  The page size specifies a max number of
 * bytes that can be written to the FLASH with a single transfer.
 */
#define SECTOR_SIZE		0x10000
#define NUM_SECTORS		0x200
#define NUM_PAGES		0x20000
#define PAGE_SIZE		256

/*
 * Number of flash pages to be written.
 */
//#define PAGE_COUNT		16
#define PAGE_COUNT		3
/*
 * Flash address to which data is ot be written.
 */
#define TEST_ADDRESS		0x00055000
#define UNIQUE_VALUE		0x00
/*
 * The following constants specify the max amount of data and the size of the
 * the buffer required to hold the data and overhead to transfer the data to
 * and from the FLASH.
 */
#define MAX_DATA		PAGE_COUNT * PAGE_SIZE



/**************************** Type Definitions *******************************/

/***************** Macros (Inline Functions) Definitions *********************/

/************************** Function Prototypes ******************************/

void FlashErase(XQspiPs *QspiPtr, u32 Address, u32 ByteCount);

void FlashWrite(XQspiPs *QspiPtr, u32 Address, u32 ByteCount, u8 Command);

void FlashRead(XQspiPs *QspiPtr, u32 Address, u32 ByteCount, u8 Command);

int FlashReadID(void);

int FlashReadUID(void);

int QspiFlashPolledExample(XQspiPs *QspiInstancePtr, u16 QspiDeviceId);

void WriteIn(int data[],u32 ADDRESS);

u8 *ReadOut(u32 ADDRESS);

/************************** Variable Definitions *****************************/

/*
 * The instances to support the device drivers are global such that they
 * are initialized to zero each time the program runs. They could be local
 * but should at least be static so they are zeroed.
 */
//static XQspiPs QspiInstance;

/*
 * The following variable allows a test value to be added to the values that
 * are written to the FLASH such that unique values can be generated to
 * guarantee the writes to the FLASH were successful
 */
//int Test = 5;
//void test(void);


/*u8 ReadBuffer[MAX_DATA + DATA_OFFSET + DUMMY_SIZE];
u8 WriteBuffer[PAGE_SIZE + DATA_OFFSET];*/

/*****************************************************************************/

#endif /* SRC_FLASH_H_ */
