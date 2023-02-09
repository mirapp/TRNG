#set_property IOSTANDARD LVCMOS33 [get_ports clk_i]
#set_property PACKAGE_PIN K17 [get_ports clk_i]
#create_clock -period 30.000 -name clk_i -waveform {0.000 4.000} -add [get_ports clk_i]

#set_property IOSTANDARD LVCMOS33 [get_ports enable_i]
#set_property PACKAGE_PIN E17 [get_ports enable_i]


#set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets {neoTRNG_cell_inst[0].neoTRNG_cell_inst_i/enable_sreg_l_reg[0]_0}]

#set_property IOSTANDARD LVCMOS33 [get_ports {data_o[7]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {data_o[6]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {data_o[5]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {data_o[4]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {data_o[3]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {data_o[2]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {data_o[1]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {data_o[0]}]
#set_property IOSTANDARD LVCMOS33 [get_ports valid_o]

set_property BITSTREAM.General.UnconstrainedPins {Allow} [current_design]
set_property SEVERITY {Warning} [get_drc_checks LUTLP-1]