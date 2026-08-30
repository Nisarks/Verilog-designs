`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.08.2026 22:57:01
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
reg i0,i1;
wire eq;
integer i;

comparator co1(i0,i1,eq);
initial begin
i0<=0;
i1<=0;

   $monitor($time, "i0=%0b , i1=%0b, eq=%0b\n",i0,i1,eq);
   
for(i=0;i<4;i=i+1)begin
{i0,i1}=i;
#10;
end
end

endmodule
