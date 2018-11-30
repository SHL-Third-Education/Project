`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/01/2018 04:21:36 AM
// Design Name: 
// Module Name: dff_async_rst
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


module dff_async_rst(d, clk, async_rst, q);
    input d;
    input clk;
    input async_rst;
    output reg q;
     
    always @(negedge clk or negedge async_rst) 
    begin
        if(async_rst == 1'b0)
            q <= 1'b0; 
        else 
            q <= d; 
    end 
endmodule 
