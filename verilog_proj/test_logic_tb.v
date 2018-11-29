`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/30/2018 01:15:15 AM
// Design Name: 
// Module Name: test_logic_tb
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


module test_logic_tb;
    reg [15:0] a, b;
    wire [15:0] res;
    wire [7:0] c, d;
    
    test_logic u(a, b, res);
    
    initial begin
        a = 0; b = 0;
        #250 a = 16'b0000000000001010; b = 16'b0000000000000101;
        #250 a = 16'b1010100101001011; b = 16'b1010001010110100;
        #250 a = 16'b1010110110111011; b = 16'b1010101001010101;
    end
endmodule
