`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.08.2026 23:17:35
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
reg j,k;
reg clk;
reg rst;
wire q;

JK_FF jk0(q,j,k,clk,rst);

initial
  clk=1'b0;
always
 #5 clk=~clk;
 
 initial begin
 rst=1'b1;j=0;k=0;
 #10 rst=1'b0;
 #10 j=0;k=1;
 #10 j=1;k=0;
 #10 j=1;k=1;
 #20 $finish;  
 
end
 initial 
        $monitor($time ,"J=%b, K=%b, Q=%b\n",j,k,q);
endmodule
