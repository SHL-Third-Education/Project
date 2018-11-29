`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/30/2018 12:51:47 AM
// Design Name: 
// Module Name: ander2_tb
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


module ander2_tb;
    reg a, b;
    wire c, res;
    
    ander2 u (a, b, res);
    
    initial begin
        a = 0; b = 0;
        #200 a = 1;
        #200 a = 0; b = 1;
        #200 a = 1;
    end
endmodule
