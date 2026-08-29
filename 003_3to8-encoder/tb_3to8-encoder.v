`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.08.2026 22:48:19
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
reg [7:0]DATA;
wire [2:0]OUT;
encoder8to3 e0(DATA,OUT);
initial begin
#5 DATA=8'b10000000;
#10 $display("DATA=%b,OUT=%b\n",DATA,OUT);

DATA=8'b01000000;
#10 $display("DATA=%b,OUT=%b\n",DATA,OUT);

DATA=8'b00100000;
#10 $display("DATA=%b,OUT=%b\n",DATA,OUT);

DATA=8'b00010000;
#10 $display("DATA=%b,OUT=%b\n",DATA,OUT);

DATA=8'b00001000;
#10 $display("DATA=%b,OUT=%b\n",DATA,OUT);

DATA=8'b00000100;
#10 $display("DATA=%b,OUT=%b\n",DATA,OUT);

DATA=8'b00000010;
#10 $display("DATA=%b,OUT=%b\n",DATA,OUT);

DATA=8'b00000001;
#1 $display("DATA=%b,OUT=%b\n",DATA,OUT);
#20 $finish; 
end
endmodule
