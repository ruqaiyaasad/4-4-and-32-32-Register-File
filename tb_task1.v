module tb_task1;
 reg clk=0,reset=0,we=0; reg [1:0] wa,ra1,ra2; reg [3:0] wd;
 wire [3:0] rd1,rd2;
 register_file_4x4 dut(clk,reset,we,wa,ra1,ra2,wd,rd1,rd2);
 always #5 clk=~clk;
 initial begin
 reset=1;#12;reset=0;
 @(negedge clk);we=1;wa=1;wd=6;
 @(negedge clk);wa=2;wd=3;
 @(negedge clk);wa=3;wd=13;
 @(negedge clk);we=0;ra1=1;ra2=2;#1;
 $display("Register1=%0d Register2=%0d",rd1,rd2);
 if(rd1!==6 || rd2!==3) $display("FAIL"); else $display("PASS task 2 read values");
 $finish;end
endmodule
