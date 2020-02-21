add wave -position insertpoint  \
sim:/threeway_mux/input_0 \
sim:/threeway_mux/input_1 \
sim:/threeway_mux/input_2 \
sim:/threeway_mux/which \
sim:/threeway_mux/output 


force -freeze sim:/threeway_mux/input_0 32'hA1A1A1A1 0
force -freeze sim:/threeway_mux/input_1 32'hFFFFFFFF 0
force -freeze sim:/threeway_mux/input_2 32'h00000000 0
force -freeze sim:/threeway_mux/which 4'h0 0
run 50 ns

force -freeze sim:/threeway_mux/input_0 32'hA1A1A1A1 0
force -freeze sim:/threeway_mux/input_1 32'hFFFFFFFF 0
force -freeze sim:/threeway_mux/input_2 32'h00000000 0
force -freeze sim:/threeway_mux/which 4'h1 0
run 50 ns

force -freeze sim:/threeway_mux/input_0 32'hA1A1A1A1 0
force -freeze sim:/threeway_mux/input_1 32'hFFFFFFFF 0
force -freeze sim:/threeway_mux/input_2 32'h00000000 0
force -freeze sim:/threeway_mux/which 4'h2 0
run 50 ns

force -freeze sim:/threeway_mux/input_0 32'hA1A1A1A1 0
force -freeze sim:/threeway_mux/input_1 32'hFFFFFFFF 0
force -freeze sim:/threeway_mux/input_2 32'h00000000 0
force -freeze sim:/threeway_mux/which 4'h3 0
run 50 ns

force -freeze sim:/threeway_mux/input_0 32'hA1A1A1A1 0
force -freeze sim:/threeway_mux/input_1 32'hFFFFFFFF 0
force -freeze sim:/threeway_mux/input_2 32'h00000000 0
force -freeze sim:/threeway_mux/which 4'h0 0
run 50 ns

force -freeze sim:/threeway_mux/input_0 32'hA1A1A1A1 0
force -freeze sim:/threeway_mux/input_1 32'hFFFFFFFF 0
force -freeze sim:/threeway_mux/input_2 32'h00000000 0
force -freeze sim:/threeway_mux/which 4'h1 0
run 50 ns

force -freeze sim:/threeway_mux/input_0 32'hA1A1A1A1 0
force -freeze sim:/threeway_mux/input_1 32'hFFFFFFFF 0
force -freeze sim:/threeway_mux/input_2 32'h00000000 0
force -freeze sim:/threeway_mux/which 4'h2 0
run 50 ns
