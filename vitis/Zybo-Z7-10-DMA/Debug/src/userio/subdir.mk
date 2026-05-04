################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/userio/userio.c 

OBJS += \
./src/userio/userio.o 

C_DEPS += \
./src/userio/userio.d 


# Each subdirectory must supply rules for building sources it contributes
src/userio/%.o: ../src/userio/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 gcc compiler'
	arm-none-eabi-gcc -Wall -O0 -g3 -I"C:\Users\Lennym\Downloads\Zybo_DMA_Audio_KWS_energy-main\Zybo_DMA_Audio_KWS_energy-main\vitis\Zybo-Z7-10-DMA\src" -IC:/Users/Lennym/Downloads/Zybo-Z7-10-DMA-sw.ide/vitis/system_wrapper/export/system_wrapper/sw/system_wrapper/domain_ps7_cortexa9_0/bspinclude/include -c -fmessage-length=0 -MT"$@" -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


