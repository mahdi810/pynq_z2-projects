# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\HOME\pynq_z2_files\zperiph_1\vitiswsp\peripheral_platform\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\HOME\pynq_z2_files\zperiph_1\vitiswsp\peripheral_platform\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {peripheral_platform}\
-hw {C:\HOME\pynq_z2_files\zperiph_1\periph_design_wrapper.xsa}\
-proc {ps7_cortexa9_0} -os {standalone} -no-boot-bsp -out {C:/HOME/pynq_z2_files/zperiph_1/vitiswsp}

platform write
platform generate -domains 
platform active {peripheral_platform}
platform generate
platform active {peripheral_platform}
bsp reload
platform generate -domains 
platform active {peripheral_platform}
bsp reload
platform generate -domains 
