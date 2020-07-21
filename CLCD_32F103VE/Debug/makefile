################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include Drivers/STM32F1xx_HAL_Driver/Src/subdir.mk
-include Core/Startup/subdir.mk
-include Core/Src/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
EXECUTABLES += \
CLCD_32F103VE.elf \

SIZE_OUTPUT += \
default.size.stdout \

OBJDUMP_LIST += \
CLCD_32F103VE.list \

OBJCOPY_BIN += \
CLCD_32F103VE.bin \


# All Target
all: CLCD_32F103VE.elf secondary-outputs

# Tool invocations
CLCD_32F103VE.elf: $(OBJS) $(USER_OBJS) D:\STM32CubeIDE\workspace\CLCD_32F103VE\STM32F103VETX_FLASH.ld
	arm-none-eabi-gcc -o "CLCD_32F103VE.elf" @"objects.list" $(USER_OBJS) $(LIBS) -mcpu=cortex-m3 -T"D:\STM32CubeIDE\workspace\CLCD_32F103VE\STM32F103VETX_FLASH.ld" --specs=nosys.specs -Wl,-Map="CLCD_32F103VE.map" -Wl,--gc-sections -static --specs=nano.specs -mfloat-abi=soft -mthumb -Wl,--start-group -lc -lm -Wl,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

default.size.stdout: $(EXECUTABLES)
	arm-none-eabi-size  $(EXECUTABLES)
	@echo 'Finished building: $@'
	@echo ' '

CLCD_32F103VE.list: $(EXECUTABLES)
	arm-none-eabi-objdump -h -S $(EXECUTABLES) > "CLCD_32F103VE.list"
	@echo 'Finished building: $@'
	@echo ' '

CLCD_32F103VE.bin: $(EXECUTABLES)
	arm-none-eabi-objcopy  -O binary $(EXECUTABLES) "CLCD_32F103VE.bin"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) *
	-@echo ' '

secondary-outputs: $(SIZE_OUTPUT) $(OBJDUMP_LIST) $(OBJCOPY_BIN)

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
