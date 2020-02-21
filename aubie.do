add wave -position end  sim:/aubie/aubie_clock
add wave -position end  sim:/aubie/result_out
add wave -position end  sim:/aubie/mem_out
add wave -position end  sim:/aubie/memaddr_in
add wave -position end  sim:/aubie/ir_out
add wave -position end  sim:/aubie/imm_out
add wave -position end  sim:/aubie/addr_in
add wave -position end  sim:/aubie/addr_out
add wave -position end  sim:/aubie/pcplusone_out
add wave -position end  sim:/aubie/pc_out
add wave -position end  sim:/aubie/pc_in
add wave -position end  sim:/aubie/regfile_in
add wave -position end  sim:/aubie/regfile_out
add wave -position end  sim:/aubie/alu_out
add wave -position end  sim:/aubie/op1_out
add wave -position end  sim:/aubie/op2_out
add wave -position end  sim:/aubie/alu_func
add wave -position end  sim:/aubie/regfile_mux
add wave -position end  sim:/aubie/memaddr_mux
add wave -position end  sim:/aubie/regfile_index
add wave -position end  sim:/aubie/addr_mux
add wave -position end  sim:/aubie/pc_mux
add wave -position end  sim:/aubie/mem_clk
add wave -position end  sim:/aubie/mem_readnotwrite
add wave -position end  sim:/aubie/ir_clk
add wave -position end  sim:/aubie/imm_clk
add wave -position end  sim:/aubie/addr_clk
add wave -position end  sim:/aubie/pc_clk
add wave -position end  sim:/aubie/regfile_clk
add wave -position end  sim:/aubie/regfile_readnotwrite
add wave -position end  sim:/aubie/op1_clk
add wave -position end  sim:/aubie/op2_clk
add wave -position end  sim:/aubie/result_clk
add wave -position end  sim:/aubie/alu_error

force -freeze sim:/aubie/aubie_clock 0 0, 1 {50 ns} -r 100

run 10000 ns