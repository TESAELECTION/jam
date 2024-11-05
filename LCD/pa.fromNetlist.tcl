
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name LCD -dir "D:/Sara_42259/Codes/LCD/planAhead_run_2" -part xc3s250epq208-5
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "D:/Sara_42259/Codes/LCD/LCD_FSM.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {D:/Sara_42259/Codes/LCD} }
set_property target_constrs_file "lcd.ucf" [current_fileset -constrset]
add_files [list {lcd.ucf}] -fileset [get_property constrset [current_run]]
link_design
