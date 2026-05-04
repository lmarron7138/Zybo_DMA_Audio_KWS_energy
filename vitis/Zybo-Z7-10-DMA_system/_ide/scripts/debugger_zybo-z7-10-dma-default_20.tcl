# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: C:\Users\Lennym\Downloads\Zybo_DMA_Audio_KWS_energy-main\Zybo_DMA_Audio_KWS_energy-main\vitis\Zybo-Z7-10-DMA_system\_ide\scripts\debugger_zybo-z7-10-dma-default_20.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source C:\Users\Lennym\Downloads\Zybo_DMA_Audio_KWS_energy-main\Zybo_DMA_Audio_KWS_energy-main\vitis\Zybo-Z7-10-DMA_system\_ide\scripts\debugger_zybo-z7-10-dma-default_20.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent Zybo Z7 210351BE7A46A" && level==0 && jtag_device_ctx=="jsn-Zybo Z7-210351BE7A46A-13722093-0"}
fpga -file C:/Users/Lennym/Downloads/Zybo_DMA_Audio_KWS_energy-main/Zybo_DMA_Audio_KWS_energy-main/vitis/Zybo-Z7-10-DMA/_ide/bitstream/system_wrapper.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw C:/Users/Lennym/Downloads/Zybo-Z7-10-DMA-sw.ide/vitis/system_wrapper/export/system_wrapper/hw/system_wrapper.xsa -mem-ranges [list {0x40000000 0xbfffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source C:/Users/Lennym/Downloads/Zybo_DMA_Audio_KWS_energy-main/Zybo_DMA_Audio_KWS_energy-main/vitis/Zybo-Z7-10-DMA/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow C:/Users/Lennym/Downloads/Zybo_DMA_Audio_KWS_energy-main/Zybo_DMA_Audio_KWS_energy-main/vitis/Zybo-Z7-10-DMA/Debug/Zybo-Z7-10-DMA.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "*A9*#0"}
con
