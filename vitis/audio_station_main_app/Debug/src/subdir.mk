################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
LD_SRCS += \
../src/lscript.ld 

C_SRCS += \
../src/audio_interface.c \
../src/looper.c \
../src/main.c \
../src/platform.c \
../src/volume_ramp.c 

OBJS += \
./src/audio_interface.o \
./src/looper.o \
./src/main.o \
./src/platform.o \
./src/volume_ramp.o 

C_DEPS += \
./src/audio_interface.d \
./src/looper.d \
./src/main.d \
./src/platform.d \
./src/volume_ramp.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 gcc compiler'
	arm-none-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -I/home/hannes/Entwicklung/synthesizer/vitis/audio_station_platform/export/audio_station_platform/sw/audio_station_platform/standalone_domain/bspinclude/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


