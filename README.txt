LAB 09 - REGISTER FILE
Task 1/2: 4 registers, each 4 bits wide, two asynchronous read ports and one
synchronous write port. The testbench writes 6 to register 1, 3 to register 2,
13 to register 3, then reads registers 1 and 2.
Task 3: 32 x 32-bit RV32 register file, two combinational reads, synchronous
write, asynchronous active-high reset, and x0 hardwired to zero.
Task 4 is a Logisim activity.
Run Task 1:
vlib work
vlog task1_register_file_4x4.v tb_task1.v
vsim work.tb_task1
run -all
Run Task 3 similarly with task3_register_file_32x32.v and tb_task3.v.
