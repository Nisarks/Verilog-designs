`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.08.2026 22:25:20
// Design Name: 
// Module Name: stimulus
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module stimulus;
reg T;
reg CLK;
reg RST;
wire Q;
T_FF t1(Q,T,CLK,RST);
initial 
   CLK=1'b0;
always 
   #5 CLK=~CLK;
initial begin
RST=1'b1;T=0;
#10 RST=1'b0;
#10 T=1'b1;
#10 T=1'b0;
#10 RST=1'b1;
#10 RST=1'b0;
#20 $finish;
end
  initial 
      $monitor($time,"q=%b",Q);


endmodule
