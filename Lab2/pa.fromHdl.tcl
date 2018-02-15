
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name Lab2 -dir "C:/Users/7131322/ceng342labs/Lab2/planAhead_run_1" -part xc3s400ft256-5
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "testconst.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {BCDIncrementor.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set_property top BCDIncrementor $srcset
add_files [list {testconst.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s400ft256-5
