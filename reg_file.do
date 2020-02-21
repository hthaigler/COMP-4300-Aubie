add wave -position insertpoint  \
sim:/reg_file/data_in \
sim:/reg_file/reg_number \
sim:/reg_file/readnotwrite \
sim:/reg_file/clock \
sim:/reg_file/data_out 

restart

force -freeze sim:/reg_file/data_in 32'hFFFFFFFF 0
force -freeze sim:/reg_file/reg_number 32'h04 0
force -freeze sim:/reg_file/clock '1' 0
force -freeze sim:/reg_file/readnotwrite '0' 0
run 50 ns

force -freeze sim:/reg_file/data_in 32'h00000000 0
force -freeze sim:/reg_file/reg_number 32'h01 0
force -freeze sim:/reg_file/clock '1' 0
force -freeze sim:/reg_file/readnotwrite '0' 0
run 50 ns

force -freeze sim:/reg_file/data_in 32'hA1A1A1A1 0
force -freeze sim:/reg_file/reg_number 32'h02 0
force -freeze sim:/reg_file/clock '1' 0
force -freeze sim:/reg_file/readnotwrite '0' 0
run 50 ns

force -freeze sim:/reg_file/data_in 32'hA1A1A1A1 0
force -freeze sim:/reg_file/reg_number 32'h04 0
force -freeze sim:/reg_file/clock '1' 0
force -freeze sim:/reg_file/readnotwrite '1' 0
run 50 ns

force -freeze sim:/reg_file/data_in 32'hA1A1A1A1 0
force -freeze sim:/reg_file/reg_number 32'h02 0
force -freeze sim:/reg_file/clock '0' 0
force -freeze sim:/reg_file/readnotwrite '1' 0
run 50 ns

force -freeze sim:/reg_file/data_in 32'hA1A1A1A1 0
force -freeze sim:/reg_file/reg_number 32'h02 0
force -freeze sim:/reg_file/clock '1' 0
force -freeze sim:/reg_file/readnotwrite '1' 0
run 50 ns

force -freeze sim:/reg_file/data_in 32'hA1A1A1A1 0
force -freeze sim:/reg_file/reg_number 32'h08 0
force -freeze sim:/reg_file/clock '0' 0
force -freeze sim:/reg_file/readnotwrite '1' 0
run 50 ns
