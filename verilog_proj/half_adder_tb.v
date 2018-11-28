`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/28/2018 09:37:30 PM
// Design Name: 
// Module Name: half_adder_tb
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


module half_adder_tb;
    reg a, b;
    wire s, c;
    
    half_adder uut (.a(a), .b(b), .s(s), .c(c));
    
    initial begin
        a = 0;
        b = 0;
        #200;
        a = 0;
        b = 1;
        #200;
        a = 1;
        b = 1;
        #200;
        a = 1;
        b = 0;
    end
endmodule
