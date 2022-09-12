################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../GPIO_Program.c \
../LCD_Program.c \
../Ultrasonic.c \
../icu.c \
../main.c 

OBJS += \
./GPIO_Program.o \
./LCD_Program.o \
./Ultrasonic.o \
./icu.o \
./main.o 

C_DEPS += \
./GPIO_Program.d \
./LCD_Program.d \
./Ultrasonic.d \
./icu.d \
./main.d 


# Each subdirectory must supply rules for building sources it contributes
%.o: ../%.c subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: AVR Compiler'
	avr-gcc -Wall -g2 -gstabs -O0 -fpack-struct -fshort-enums -ffunction-sections -fdata-sections -std=gnu99 -funsigned-char -funsigned-bitfields -mmcu=atmega16 -DF_CPU=1000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


