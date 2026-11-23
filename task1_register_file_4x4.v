module register_file_4x4(input clk,reset,input we,input [1:0] wa,ra1,ra2,
 input [3:0] wd,output [3:0] rd1,rd2);
 reg [3:0] regs[0:3]; integer i;
 always @(posedge clk or posedge reset) begin
  if(reset) for(i=0;i<4;i=i+1) regs[i]<=0;
  else if(we) regs[wa]<=wd;
 end
 assign rd1=regs[ra1]; assign rd2=regs[ra2];
endmodule
