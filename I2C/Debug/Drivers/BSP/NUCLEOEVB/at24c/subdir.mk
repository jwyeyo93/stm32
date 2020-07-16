################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/BSP/NUCLEOEVB/at24c/at24c.c 

OBJS += \
./Drivers/BSP/NUCLEOEVB/at24c/at24c.o 

C_DEPS += \
./Drivers/BSP/NUCLEOEVB/at24c/at24c.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/BSP/NUCLEOEVB/at24c/at24c.o: ../Drivers/BSP/NUCLEOEVB/at24c/at24c.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DDEBUG -DSTM32F407xx -c -I../USB_HOST/App -I"D:/STM32CubeIDE/workspace/I2C/Drivers/BSP/NUCLEOEVB" -I../Drivers/CMSIS/Include -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Core/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../USB_HOST/Target -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Middlewares/ST/STM32_USB_Host_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Host_Library/Class/CDC/Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/BSP/NUCLEOEVB/at24c/at24c.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

