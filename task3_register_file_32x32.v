module register_file_32x32(input clk,rst,input we,input [4:0] rs1,rs2,rd,
 input [31:0] wdata,output [31:0] rdata1,rdata2);
 reg [31:0] regs[0:31]; integer i;
 always @(posedge clk or posedge rst) begin
  if(rst) begin for(i=0;i<32;i=i+1) regs[i]<=0; end
  else if(we && rd!=0) regs[rd]<=wdata;
 end
 assign rdata1=(rs1==0)?32'b0:regs[rs1];
 assign rdata2=(rs2==0)?32'b0:regs[rs2];
endmodule
