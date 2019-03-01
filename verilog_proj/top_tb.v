`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/01/2018 02:10:59 AM
// Design Name: 
// Module Name: top_tb
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


module top_tb;
    reg [3:0] top1, top2;
    wire [3:0] top_res;
    
    top u (top1, top2, top_res);
    
    initial begin
        top1 = 4'b0000; top2 = 4'b0000;
        #250 top1 = 16'b1010; top2 = 16'b1111;
        #250 top1 = 16'b0101; top2 = 16'b1111;
        #250 top1 = 16'b1111; top2 = 16'b1111;
    end
endmodule
