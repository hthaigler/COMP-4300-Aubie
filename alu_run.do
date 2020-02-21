add wave -position insertpoint  \
sim:/alu/operand1 \
sim:/alu/operand2 \
sim:/alu/operation \
sim:/alu/result \
sim:/alu/error


force -freeze sim:/alu/operand1 32'h00654321 0
force -freeze sim:/alu/operand2 32'h00000001 0
force -freeze sim:/alu/operation 4'h0 0
run 50 ns

force -freeze sim:/alu/operand1 32'hFFFFFFFF 0
force -freeze sim:/alu/operand2 32'h000000FF 0
force -freeze sim:/alu/operation 4'h0 0
run 50 ns

force -freeze sim:/alu/operand1 32'hF0000000 0
force -freeze sim:/alu/operand2 32'h00000001 0
force -freeze sim:/alu/operation 4'h1 0
run 50 ns

force -freeze sim:/alu/operand1 32'h00000001 0
force -freeze sim:/alu/operand2 32'h000FFFFF 0
force -freeze sim:/alu/operation 4'h1 0
run 50 ns

force -freeze sim:/alu/operand1 32'h00654321 0
force -freeze sim:/alu/operand2 32'h00000001 0
force -freeze sim:/alu/operation 4'h2 0
run 50 ns

force -freeze sim:/alu/operand1 32'h0FFFFFFF 0
force -freeze sim:/alu/operand2 32'h0FFFFFFF 0
force -freeze sim:/alu/operation 4'h2 0
run 50 ns


force -freeze sim:/alu/operand1 32'h0F000000 0
force -freeze sim:/alu/operand2 32'h00000001 0
force -freeze sim:/alu/operation 4'h3 0
run 50 ns

force -freeze sim:/alu/operand1 32'h00000001 0
force -freeze sim:/alu/operand2 32'h000FFFFF 0
force -freeze sim:/alu/operation 4'h3 0
run 50 ns

force -freeze sim:/alu/operand1 32'h000000FF 0
force -freeze sim:/alu/operand2 32'h00000011 0
force -freeze sim:/alu/operation 4'h4 0
run 50 ns

force -freeze sim:/alu/operand1 32'hA0000000 0
force -freeze sim:/alu/operand2 32'h0FFFFFFF 0
force -freeze sim:/alu/operation 4'h4 0
run 50 ns

force -freeze sim:/alu/operand1 32'hA0000000 0
force -freeze sim:/alu/operand2 32'h55555555 0
force -freeze sim:/alu/operation 4'h5 0
run 50 ns

force -freeze sim:/alu/operand1 32'h00000FFF 0
force -freeze sim:/alu/operand2 32'h00000000 0
force -freeze sim:/alu/operation 4'h5 0
run 50 ns

force -freeze sim:/alu/operand1 32'h11000011 0
force -freeze sim:/alu/operand2 32'h11111100 0
force -freeze sim:/alu/operation 4'h6 0
run 50 ns

force -freeze sim:/alu/operand1 32'h00111000 0
force -freeze sim:/alu/operand2 32'h11111000 0
force -freeze sim:/alu/operation 4'h6 0
run 50 ns

force -freeze sim:/alu/operand1 32'h0000000 0
force -freeze sim:/alu/operand2 32'h55555555 0
force -freeze sim:/alu/operation 4'h7 0
run 50 ns

force -freeze sim:/alu/operand1 32'hF234231F 0
force -freeze sim:/alu/operand2 32'h20288555 0
force -freeze sim:/alu/operation 4'h7 0
run 50 ns

force -freeze sim:/alu/operand1 32'h01111111 0
force -freeze sim:/alu/operand2 32'h11111111 0
force -freeze sim:/alu/operation 4'h8 0
run 50 ns

force -freeze sim:/alu/operand1 32'hF234231F 0
force -freeze sim:/alu/operand2 32'h11111111 0
force -freeze sim:/alu/operation 4'h8 0
run 50 ns

force -freeze sim:/alu/operand1 32'hAAAAAAAA 0
force -freeze sim:/alu/operand2 32'h11111111 0
force -freeze sim:/alu/operation 4'h9 0
run 50 ns

force -freeze sim:/alu/operand1 32'hFFFFFFFF 0
force -freeze sim:/alu/operand2 32'hAAAAAAAA 0
force -freeze sim:/alu/operation 4'h9 0
run 50 ns

force -freeze sim:/alu/operand1 32'h00000001 0
force -freeze sim:/alu/operand2 32'h00000000 0
force -freeze sim:/alu/operation 4'hA 0
run 50 ns

force -freeze sim:/alu/operand1 32'h00000000 0
force -freeze sim:/alu/operand2 32'h00000000 0
force -freeze sim:/alu/operation 4'hA 0
run 50 ns