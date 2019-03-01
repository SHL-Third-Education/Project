`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/01/2018 01:15:07 PM
// Design Name: 
// Module Name: dds_tb
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

module dds_tb;
   reg clk = 0;
   wire [15:0] out;
   reg [31:0] freq = 16;
   reg [31:0] ifreq = 128;

   always #0.5 clk = !clk;

   dds u (clk,ifreq,freq,out);

   initial begin
      $dumpfile("wave.vcd");
      $dumpvars(0,clk);
      $dumpvars(1,freq);
      $dumpvars(2,ifreq);
      $dumpvars(3,out);
      #2560 $finish;
   end
endmodule
