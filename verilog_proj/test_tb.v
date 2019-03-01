`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/28/2018 09:37:30 PM
// Design Name: 
// Module Name: test_tb
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


module test_tb;
    reg a, b;
    wire sum, carry;
    
    test uut (.a(a), .b(b), .sum(sum), .carry(carry));
    
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
