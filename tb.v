`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.08.2026 12:12:12
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
reg a,b,cin;
wire sum,cout;
integer i;

Full_Adder fa0(sum,cout,a,b,cin);

initial begin

a<=0;
b<=0;
cin<=0;
 $monitor($time, "a=%0b , b=%0b, cin=%0b, sum=%0b, cout=%0b\n",a,b,cin,sum,cout);
 
 for(i=0;i<7;i=i+1) begin
 {a,b,cin}=i;
 #10;
 
 end
end
endmodule
