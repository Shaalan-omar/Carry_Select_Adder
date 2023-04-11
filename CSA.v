`timescale 1ns / 1ps
`include "rca.v"
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/20/2023 10:22:09 AM
// Design Name: 
// Module Name: CSA
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


module CarrySelectAdder(
input[15:0] x , y , input cin,
output [15:0] S , output cout
);

wire select,cout1,cout2;
wire [7:0] S1,S2;

RCA #(8) r0 (x[7:0] , y[7:0], cin , S[7:0], select);
RCA #(8) r1 (x[15:8] , y[15:8], 1'b0 , S1, cout1);
RCA #(8) r2 (x[15:8] , y[15:8], 1'b1 , S2,cout2);
nMux#(8) Mux1 (S1,S2,select,S[15:8]);
nMux#(1) Mux2(cout1,cout2,select,cout);

//RCA #(8) r3 (x[31:24] , y[31:24], c[2] , S[31:24], cout);



endmodule