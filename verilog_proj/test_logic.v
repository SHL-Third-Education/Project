`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/30/2018 01:13:44 AM
// Design Name: 
// Module Name: test_logic
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


module test_logic(a, b, res);
    input [15: 0] a, b;
    output [15: 0] res;
    wire [7:0] c, d;
    
    assign c = a[15:8] | b[15:8];
    assign d = a[7:0] & b[7:0];
    assign res = {c, d};
endmodule
