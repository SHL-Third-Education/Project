`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/01/2018 02:03:51 AM
// Design Name: 
// Module Name: top
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


module top(top1, top2, top_res);
    input [3:0] top1, top2;
    output [3:0] top_res;
    
    ander u1 (top1[3], top2[3], top_res[3]);
    ander u2 (top1[2], top2[2], top_res[2]);
    ander u3 (top1[1], top2[1], top_res[1]);
    ander u4 (top1[0], top2[0], top_res[0]);
endmodule
