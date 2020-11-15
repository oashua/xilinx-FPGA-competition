################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
LD_SRCS += \
../src/lscript.ld 

C_SRCS += \
../src/ads8688.c \
../src/cov.c \
../src/flash.c \
../src/helloworld.c \
../src/platform.c \
../src/utils.c \
../src/wifi.c 

OBJS += \
./src/ads8688.o \
./src/cov.o \
./src/flash.o \
./src/helloworld.o \
./src/platform.o \
./src/utils.o \
./src/wifi.o 

C_DEPS += \
./src/ads8688.d \
./src/cov.d \
./src/flash.d \
./src/helloworld.d \
./src/platform.d \
./src/utils.d \
./src/wifi.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 gcc compiler'
	arm-none-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -I../../device_read2_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


