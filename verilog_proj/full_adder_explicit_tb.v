`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/29/2018 10:41:40 PM
// Design Name: 
// Module Name: full_adder_explicit_tb
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


module full_adder_explicit_tb;
    reg ci, a, b;
    wire co, s;
    
    full_adder_explicit u (ci, a, b, co, s);
    
    initial begin
        ci = 0;
        a = 0;
        b = 0;
        #200 a = 1;
        #200 b = 1;
        #200 a = 0;
        #200 ci = 1; b = 0;
        #200 a = 1;
        #200 b = 1;
        #200 a = 0;
    end
endmodule
