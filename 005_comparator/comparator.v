`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.08.2026 22:53:03
// Design Name: 
// Module Name: comparator
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


module comparator(
   input wire i0,i1,  //I/O Port declarations
   output wire eq
 );
 // interconnect signals declaration
 wire p0,p1;
 

 assign p0=~i0&~i1;
 assign p1=i0&i1;
 assign eq=p0|p1;
 
endmodule
