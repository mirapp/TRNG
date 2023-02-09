# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: C:\Users\mirap\Vivado\neoTRNG3\xuartlite_selftest_example_1_system\_ide\scripts\systemdebugger_xuartlite_selftest_example_1_system_standalone.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source C:\Users\mirap\Vivado\neoTRNG3\xuartlite_selftest_example_1_system\_ide\scripts\systemdebugger_xuartlite_selftest_example_1_system_standalone.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent Zybo Z7 210351AD68CEA" && level==0 && jtag_device_ctx=="jsn-Zybo Z7-210351AD68CEA-23727093-0"}
fpga -file C:/Users/mirap/Vivado/neoTRNG3/xuartlite_selftest_example_1/_ide/bitstream/design_1_wrapper.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw C:/Users/mirap/Vivado/neoTRNG3/neoTRNG_platform/export/neoTRNG_platform/hw/design_1_wrapper.xsa -mem-ranges [list {0x40000000 0xbfffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source C:/Users/mirap/Vivado/neoTRNG3/xuartlite_selftest_example_1/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow C:/Users/mirap/Vivado/neoTRNG3/xuartlite_selftest_example_1/Debug/xuartlite_selftest_example_1.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "*A9*#0"}
con
