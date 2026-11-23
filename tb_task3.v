module tb_task3;
 reg clk=0,rst=0,we=0; reg [4:0] rs1,rs2,rd; reg [31:0] wdata;
 wire [31:0] rdata1,rdata2;
 register_file_32x32 dut(clk,rst,we,rs1,rs2,rd,wdata,rdata1,rdata2);
 always #5 clk=~clk;
 initial begin
 rst=1;#12;rst=0;
 @(negedge clk);we=1;rd=5;wdata=32'd123;
 @(negedge clk);rd=6;wdata=32'd456;
 @(negedge clk);we=0;rs1=5;rs2=6;#1;
 if(rdata1==123 && rdata2==456) $display("PASS read ports");
 else $display("FAIL read ports");
 @(negedge clk);we=1;rd=0;wdata=999;
 @(negedge clk);we=0;rs1=0;#1;
 if(rdata1==0) $display("PASS x0 protection"); else $display("FAIL x0");
 $finish;end
endmodule
