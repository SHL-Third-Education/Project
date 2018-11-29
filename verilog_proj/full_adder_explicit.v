`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/29/2018 10:34:47 PM
// Design Name: 
// Module Name: full_adder_explicit
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


module full_adder_explicit(ci, a, b, co, s);
    input ci, a, b;
    output co, s;
    
    wire ci, a, b, co, s;
    wire s1, c1, s2;
    
    half_adder u1(.a(ci), .b(a), .c(c1), .s(s1));
    half_adder u2(.a(s1), .b(b), .c(c2), .s(s));
    or(co, c1, c2);
endmodule
