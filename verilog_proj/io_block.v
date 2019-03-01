`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/28/2018 11:57:00 PM
// Design Name: 
// Module Name: io_block
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


module io_block(sda_oe, sda, m_clk, m_rst);
    reg [2:0] from_process;
    inout sda;
    input m_clk, m_rst, sda_oe;
    reg sda_buf;
    
    assign sda = (sda_oe) ? sda_buf : 1'bz;
    
    always @(m_clk, m_rst) begin
        if (m_rst) begin
            sda_buf <= 0;
        end
        else begin
        if (sda_oe != 0)
            sda_buf <= from_process[1];
        end
    end
    
    always @(m_clk, m_rst) begin: process
        if (m_rst) begin
            from_process <= 0;
        end
        else begin
        if (sda_oe != 0)
            from_process <= from_process + 1;
        end
    end
endmodule
