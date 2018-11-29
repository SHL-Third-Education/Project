`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/30/2018 12:51:01 AM
// Design Name: 
// Module Name: ander2
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


module ander2(a, b, res);
    input a, b;
    output res;
    wire c;
    
    assign c = a & b;
    assign res = c;
endmodule
