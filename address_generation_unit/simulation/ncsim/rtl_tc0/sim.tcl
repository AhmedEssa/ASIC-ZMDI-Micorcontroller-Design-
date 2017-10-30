# Simulation control file sim.tcl
# Setup for IUS versions greater or equal 5.8

set assert_output_stop_level { }
assertion -summary -byname -final

coverage -setup -dut tb_address_generation_unit.address_generation_unit_i
coverage -setup -test address_generation_unit.block

