`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/29/2018 02:49:09 AM
// Design Name: 
// Module Name: full_adder_implicit
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


module full_adder_implicit(ci, a, b, co, s);
    input ci, a, b;
    output co, s;
    
    wire ci, a, b, co, s;
    wire s1, c1, c2;
    
    half_adder u0(ci, a, c1, s1);
    half_adder u1(s1, b, c2, s);
    or u3(co, c1, c2);
endmodule
