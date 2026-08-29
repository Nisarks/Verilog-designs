`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.08.2026 09:38:43
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
reg d;
reg clk,rst;
wire q;

D_FF dff0(q,d,clk,rst);

initial
clk=1'b0;
always
 #5 clk=~clk;
 
 initial begin
 rst=1'b1;d=1'b0;
 #10 rst=1'b0;d=1'b1;
 #10 d=1'b0;
 #10 d=1'b1;
 #10 rst=1'b1;
 #20 $finish;
end
initial
  $monitor($time, "rst=%b, data=%b, q=%b\n",rst,d,q);
endmodule
