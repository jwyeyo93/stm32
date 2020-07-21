################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/BSP/NUCLEOEVB/clcd/clcd.c 

OBJS += \
./Drivers/BSP/NUCLEOEVB/clcd/clcd.o 

C_DEPS += \
./Drivers/BSP/NUCLEOEVB/clcd/clcd.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/BSP/NUCLEOEVB/clcd/clcd.o: ../Drivers/BSP/NUCLEOEVB/clcd/clcd.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DSTM32F103xE -DUSE_HAL_DRIVER -DDEBUG -c -I"D:/STM32CubeIDE/workspace/CLCD/Drivers/BSP/NUCLEOEVB" -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/BSP/NUCLEOEVB/clcd/clcd.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

