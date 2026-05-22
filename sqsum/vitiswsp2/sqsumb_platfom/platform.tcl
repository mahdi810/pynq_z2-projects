# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\HOME\pynq_z2_files\sqsum\vitiswsp2\sqsumb_platfom\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\HOME\pynq_z2_files\sqsum\vitiswsp2\sqsumb_platfom\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {sqsumb_platfom}\
-hw {C:\HOME\pynq_z2_files\sqsum\sqsumb_design_1_wrapper.xsa}\
-proc {ps7_cortexa9_0} -os {standalone} -no-boot-bsp -out {C:/HOME/pynq_z2_files/sqsum/vitiswsp2}

platform write
platform generate -domains 
platform active {sqsumb_platfom}
platform generate
