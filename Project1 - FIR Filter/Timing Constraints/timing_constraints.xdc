create_clock -period 21276.000 -name clk -add [get_ports clk]
set_input_delay -clock clk 100.000 [get_ports data_in_1, data_in_2]
set_output_delay -clock clk 100.000 [get_ports data_out_1, data_out_2]