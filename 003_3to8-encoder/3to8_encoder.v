`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.08.2026 22:40:29
// Design Name: 
// Module Name: encoder3to8
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


module encoder8to3(data,out);
output reg [2:0]out;
input [7:0]data;

always@(*)
begin
 case(data)
  8'b10000000:out = 3'b111;
  8'b01000000:out = 3'b110;
  8'b00100000:out = 3'b101;
  8'b00010000:out = 3'b100;
  8'b00001000:out = 3'b011;
  8'b00000100:out = 3'b010;
  8'b00000010:out = 3'b001;
  8'b00000001:out = 3'b000;
  default: out=3'b000;
 endcase
end
endmodule
