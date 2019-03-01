`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/01/2018 04:39:57 AM
// Design Name: 
// Module Name: dff_async_rst_tb
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

module dff_async_rst_tb;
    reg d;
    reg clk;
    reg async_rst;
    wire q;

    dff_async_rst u(d, clk, async_rst, q);

    initial begin
        clk=0;
        forever #10 clk = ~clk;  
    end
    
    initial begin 
        async_rst = 1;
        d <= 0;
        #250;
        async_rst = 0;
        d <= 1;
        #250;
        d <= 0;
        #250;
        d <= 1;
    end 
endmodule 
