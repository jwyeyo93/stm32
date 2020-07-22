/*********************************************************************************************************
*
* File                : ws_AT45DBXX.c
* Hardware Environment: 
* Build Environment   : RealView MDK-ARM  Version: 4.20
* Version             : V1.0
* By                  : 
*
*                                  (c) Copyright 2005-2011, WaveShare
*                                       http://www.waveshare.net
*                                          All Rights Reserved
*
*********************************************************************************************************/

#include "AT45DBXX.h"

static void AT45DBXX_BUSY(void)
{
	uint8_t status;
	AT45DBXX_Disable;	
	uint8_t cmd[1];
	cmd[0] = READ_STATE_REGISTER;
	do
	{
		AT45DBXX_Enable;
		HAL_SPI_Transmit(&hspi1, cmd, 1, 1000);	
		HAL_SPI_Receive(&hspi1,&status, 1, 1000);
		AT45DBXX_Disable;
	}while(!(status & 0x80));

}

void AT45DBXX_Read_ID(uint8_t *ID)
{
	uint8_t cmd[1];
	cmd[0] = Read_ID;
	AT45DBXX_BUSY();
	AT45DBXX_Enable;
	HAL_SPI_Transmit(&hspi1, cmd, 1, 1000);	
	HAL_SPI_Receive(&hspi1,ID, 4, 1000);
	AT45DBXX_Disable;
}

void AT45DBXX_Write(uint16_t BufferOffset,uint8_t Data)
{		
	AT45DBXX_Enable;	
	uint8_t cmd[4];
	cmd[0] = 0x84;
	cmd[1] = 0xFF;
	cmd[2] = (uint8_t)(BufferOffset>>8);
	cmd[3] = (uint8_t)BufferOffset;
	cmd[3] = Data;
	AT45DBXX_Enable;
	HAL_SPI_Transmit(&hspi1, cmd, 5, 1000);	
	AT45DBXX_Disable;
}

uint8_t AT45DBXX_Read(uint16_t BufferOffset)
{		
	uint8_t cmd[5];
	cmd[0] = 0xD4;
	cmd[1] = 0xFF;
	cmd[2] = (uint8_t)BufferOffset>>8;
	cmd[3] = (uint8_t)BufferOffset;
	cmd[4] = 0xFF;
	AT45DBXX_Enable;
	HAL_SPI_Transmit(&hspi1, cmd, 5, 1000);
	HAL_SPI_Receive(&hspi1, cmd, 1, 1000);
	AT45DBXX_Disable;
	return cmd[0];
}
