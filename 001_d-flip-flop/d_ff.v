`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.08.2026 09:36:09
// Design Name: 
// Module Name: D_FF
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


module D_FF(Q,D,CLK,RST

    );
    output reg Q;
    input CLK,RST;
    input D;
   always@(posedge CLK,posedge RST)
    begin
     if(RST)
       Q<=1'b0;
     else
       Q<=D;
    end
endmodule
