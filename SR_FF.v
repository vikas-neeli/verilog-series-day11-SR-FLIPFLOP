`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.06.2025 22:18:19
// Design Name: 
// Module Name: SR_FF
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


module SR_FF (
    input S, R,
    output Q, Qbar
);
    wire n1, n2;

    nand (n1, S, Qbar);
    nand (n2, R, Q);
    assign Q = n1;
    assign Qbar = n2;
endmodule

