`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.08.2026 22:18:55
// Design Name: 
// Module Name: T_FF
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


module T_FF(q,t,clk,reset);
output reg q;
input t;
input clk,reset;
always@(posedge clk) 
  begin
    if(reset)
      q<=0;
    else  begin
          if(t) 
            q<= ~q;
          else
            q<=q;
          
end
end
  
endmodule
