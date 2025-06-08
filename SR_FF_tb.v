`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.06.2025 22:20:46
// Design Name: 
// Module Name: SR_FF_tb
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


module SR_FF_tb();
    reg S, R;
    wire Q, Qbar;
    SR_FF dut (
        .S(S), 
        .R(R), 
        .Q(Q), 
        .Qbar(Qbar)
    );
    initial begin
        S = 0; R = 0; #10; 
        S = 0; R = 1; #10; 
        S = 1; R = 0; #10; 
        S = 1; R = 1; #10; 
        S = 0; R = 0; #10; 
        $finish;
    end
endmodule
