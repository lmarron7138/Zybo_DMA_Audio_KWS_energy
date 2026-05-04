################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
LD_SRCS += \
../src/lscript.ld 

CC_SRCS += \
../src/kws.cc 

C_SRCS += \
../src/demo.c \
../src/platform.c 

CC_DEPS += \
./src/kws.d 

OBJS += \
./src/demo.o \
./src/kws.o \
./src/platform.o 

C_DEPS += \
./src/demo.d \
./src/platform.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 gcc compiler'
	arm-none-eabi-gcc -Wall -O0 -g3 -I"C:\Users\Lennym\Downloads\Zybo_DMA_Audio_KWS_energy-main\Zybo_DMA_Audio_KWS_energy-main\vitis\Zybo-Z7-10-DMA\src" -IC:/Users/Lennym/Downloads/Zybo-Z7-10-DMA-sw.ide/vitis/system_wrapper/export/system_wrapper/sw/system_wrapper/domain_ps7_cortexa9_0/bspinclude/include -c -fmessage-length=0 -MT"$@" -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/kws.o: ../src/kws.cc
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 g++ compiler'
	arm-none-eabi-g++ -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard ... -Wall -O0 -g3 -I"C:\Users\Lennym\Downloads\Zybo_DMA_Audio_KWS_energy-main\Zybo_DMA_Audio_KWS_energy-main\vitis\system_wrapper\ps7_cortexa9_0\domain_ps7_cortexa9_0\bsp\ps7_cortexa9_0\include" -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"src/kws.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


