# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: C:\HOME\pynq_z2_files\zperiph_1\vitiswsp\peripheral_project_system\_ide\scripts\debugger_peripheral_project-default.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source C:\HOME\pynq_z2_files\zperiph_1\vitiswsp\peripheral_project_system\_ide\scripts\debugger_peripheral_project-default.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Xilinx HW-FTDI-TEST FT2232H 1234-tulA" && level==0 && jtag_device_ctx=="jsn-HW-FTDI-TEST FT2232H-1234-tulA-23727093-0"}
fpga -file C:/HOME/pynq_z2_files/zperiph_1/vitiswsp/peripheral_project/_ide/bitstream/periph_design_wrapper.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw C:/HOME/pynq_z2_files/zperiph_1/vitiswsp/peripheral_platform/export/peripheral_platform/hw/periph_design_wrapper.xsa -mem-ranges [list {0x40000000 0xbfffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source C:/HOME/pynq_z2_files/zperiph_1/vitiswsp/peripheral_project/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow C:/HOME/pynq_z2_files/zperiph_1/vitiswsp/peripheral_project/Debug/peripheral_project.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "*A9*#0"}
con
