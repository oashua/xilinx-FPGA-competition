connect -url tcp:127.0.0.1:3121
source D:/xilinx/project/device_read_wifi/device_read_wifi.sdk/design_1_wrapper_hw_platform_1/ps7_init.tcl
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Xilinx TUL 1234-tulA"} -index 0
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Xilinx TUL 1234-tulA" && level==0} -index 1
fpga -file D:/xilinx/project/device_read_wifi/device_read_wifi.sdk/design_1_wrapper_hw_platform_1/design_1_wrapper.bit
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Xilinx TUL 1234-tulA"} -index 0
loadhw -hw D:/xilinx/project/device_read_wifi/device_read_wifi.sdk/design_1_wrapper_hw_platform_1/system.hdf -mem-ranges [list {0x40000000 0xbfffffff}]
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Xilinx TUL 1234-tulA"} -index 0
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Xilinx TUL 1234-tulA"} -index 0
dow D:/xilinx/project/device_read_wifi/device_read_wifi.sdk/test_final/Debug/test_final.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Xilinx TUL 1234-tulA"} -index 0
con
