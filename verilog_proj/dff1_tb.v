`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/30/2018 12:25:12 AM
// Design Name: 
// Module Name: dff1_tb
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


module dff1_tb;
    reg d, clk;
    wire q;
    
    dff1 u(d, clk, q);
    
    initial begin
        clk = 0;
            forever #10 clk = ~clk;
    end
    
    initial begin
        d <= 0;
        #100;
        d <= 1;
        #100;
        d <= 0;
        #100;
        d <= 1;
    end
endmodule
