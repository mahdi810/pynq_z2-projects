# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\HOME\pynq_z2_files\fib_series\vitiswsp\fib_series\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\HOME\pynq_z2_files\fib_series\vitiswsp\fib_series\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {fib_series}\
-hw {C:\HOME\pynq_z2_files\fib_series\fib_series.xsa}\
-no-boot-bsp -out {C:/HOME/pynq_z2_files/fib_series/vitiswsp}

platform write
domain create -name {standalone_ps7_cortexa9_0} -display-name {standalone_ps7_cortexa9_0} -os {standalone} -proc {ps7_cortexa9_0} -runtime {cpp} -arch {32-bit} -support-app {hello_world}
platform generate -domains 
platform active {fib_series}
platform generate -quick
platform generate
catch {platform remove fib_platform}
