# ####################################################################

#  Created by Genus(TM) Synthesis Solution 21.14-s082_1 on Thu Dec 19 13:29:51 IST 2024

# ####################################################################

set sdc_version 2.0

set_units -capacitance 1000fF
set_units -time 1000ps

# Set the current design
current_design barrel_s

create_clock -name "virtual_clk" -period 10.0 -waveform {0.0 5.0} 
set_clock_gating_check -setup 0.0 
set_output_delay -clock [get_clocks virtual_clk] -add_delay -max 1.0 [get_ports {out[7]}]
set_output_delay -clock [get_clocks virtual_clk] -add_delay -max 1.0 [get_ports {out[6]}]
set_output_delay -clock [get_clocks virtual_clk] -add_delay -max 1.0 [get_ports {out[5]}]
set_output_delay -clock [get_clocks virtual_clk] -add_delay -max 1.0 [get_ports {out[4]}]
set_output_delay -clock [get_clocks virtual_clk] -add_delay -max 1.0 [get_ports {out[3]}]
set_output_delay -clock [get_clocks virtual_clk] -add_delay -max 1.0 [get_ports {out[2]}]
set_output_delay -clock [get_clocks virtual_clk] -add_delay -max 1.0 [get_ports {out[1]}]
set_output_delay -clock [get_clocks virtual_clk] -add_delay -max 1.0 [get_ports {out[0]}]
set_output_delay -clock [get_clocks virtual_clk] -add_delay -min 0.2 [get_ports {out[7]}]
set_output_delay -clock [get_clocks virtual_clk] -add_delay -min 0.2 [get_ports {out[6]}]
set_output_delay -clock [get_clocks virtual_clk] -add_delay -min 0.2 [get_ports {out[5]}]
set_output_delay -clock [get_clocks virtual_clk] -add_delay -min 0.2 [get_ports {out[4]}]
set_output_delay -clock [get_clocks virtual_clk] -add_delay -min 0.2 [get_ports {out[3]}]
set_output_delay -clock [get_clocks virtual_clk] -add_delay -min 0.2 [get_ports {out[2]}]
set_output_delay -clock [get_clocks virtual_clk] -add_delay -min 0.2 [get_ports {out[1]}]
set_output_delay -clock [get_clocks virtual_clk] -add_delay -min 0.2 [get_ports {out[0]}]
set_wire_load_mode "enclosed"
set_dont_use true [get_lib_cells tsl18fs120_scl_ff/slbhb2]
set_dont_use true [get_lib_cells tsl18fs120_scl_ff/slbhb1]
set_dont_use true [get_lib_cells tsl18fs120_scl_ff/slbhb4]
set_clock_uncertainty -setup 0.2 [get_clocks virtual_clk]
set_clock_uncertainty -hold 0.2 [get_clocks virtual_clk]
