`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/30/2018 01:04:45 AM
// Design Name: 
// Module Name: ander3_tb
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


module ander3_tb;
    reg [15:0] a, b;
    wire [15:0] c, res;
    
    ander3 u (a, b, res);
    
    initial begin
        a = 0; b = 0;
        #250 a = 1;
        #250 a = 0; b = 1;
        #250 a = 1;
    end
endmodule
