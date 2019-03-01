`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/29/2018 12:11:34 AM
// Design Name: 
// Module Name: io_block_tb
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


module io_block_tb;
    reg sda_oe;
    reg m_clk;
    reg m_rst;
    
    reg sda_read_buf;
    
    wire sda;
    
    io_block dut(.sda_oe(sda_oe), .sda(sda), .m_clk(m_clk), .m_rst(m_rst));
    
    always
    #2 m_clk = ~m_clk;
    
    initial begin
        sda_oe = 0; m_clk = 0; m_rst = 1;
        #5 m_rst = 0;
        sda_read_buf = 1;
        #5 sda_read_buf = 0;
        #5 sda_read_buf = 1;
        #50 sda_oe = 1;
        #50 sda_oe = 0;
        #100 sda_read_buf = 0;
    end
    
    assign sda = (sda_oe) ? 1'bz : sda_read_buf;
endmodule
