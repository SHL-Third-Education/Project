`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/25/2018 01:41:55 PM
// Design Name: 
// Module Name: ander_tb
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


module ander_tb;
    reg a, b;
    wire result;
    ander uut (.a(a), .b(b), .result(result));
    initial begin
        a = 0;
        b = 0;
        #200;
        a = 0;
        b = 1;
        #200;
        a = 1;
        b = 1;
    end
endmodule
