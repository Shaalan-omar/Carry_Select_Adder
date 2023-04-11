`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/20/2023 09:34:23 PM
// Design Name: 
// Module Name: nMux
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


module nMux #(parameter N = 8 )(
input Select,
input [N-1:0] x,y,
output [N-1:0]outpp
    );
    
 assign outpp = Select ? y:x;
endmodule
