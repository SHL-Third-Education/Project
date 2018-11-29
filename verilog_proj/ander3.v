`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/30/2018 01:03:16 AM
// Design Name: 
// Module Name: ander3
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


module ander3(a, b, res);
    input [15:0] a, b;
    output [15:0] res;
    wire [15:0] c;
    
    assign c[15:8] = a[15:8] & b[15:8];
    assign c[7:0] = a[7:0] & b[7:0];
    assign res = c;
endmodule
