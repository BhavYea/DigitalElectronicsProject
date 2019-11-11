`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/11/2019 09:41:28 PM
// Design Name: 
// Module Name: regArrayLogic
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


module regArrayLogic(
    input SAL_in,
    input SR,
    input E_L,
    output SAL,
    output LR0,
    output LRN,
    output ER0,
    output ERN,
    inout databus[15:0]
    );
    
    reg SAL,ER0,ERN,LR0,LRN;
    
    always @(SAL_in & SR & E_L)
    begin
        SAL = SAL_in;
        case({E_L,SR})
        2'b00 : ER0 = 1;
        2'b01 : ERN = 1;
        2'b10 : LR0 = 1;
        2'b11 : LRN = 1;
        endcase
    end
    
    reg r0[7:0];
    reg r1[7:0];
    reg r2[7:0];
    reg r3[7:0];
    reg r4[7:0];
    reg r5[7:0];
    reg r6[7:0];
    reg r7[7:0];
    
    
    
endmodule
