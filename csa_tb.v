//`timescale 1ns/1ps


////////////////////////////////////////////////////////////////////////////////////
//// Company: 
//// Engineer: 
//// 
//// Create Date: 02/22/2023 12:25:15 AM
//// Design Name: 
//// Module Name: csa_tb
//// Project Name: 
//// Target Devices: 
//// Tool Versions: 
//// Description: 
//// 
//// Dependencies: 
//// 
//// Revision:
//// Revision 0.01 - File Created
//// Additional Comments:
//// 
///////////////////////////////////////////////////////////////////////////////////

module csa_tb();

reg[15:0] x, y ;
reg cin;
wire [15:0] S;
wire cout;

CSA c0 (x , y , cin, S, cout);


    //wire [31:0] S_gold = x+y;

    //error checker

    //assign error = (S_gold != S);


    initial begin

        $dumpfile("test.vcd");
        $dumpvars;
    end


initial 
begin

    x=0;    
    y=0;
    cin=0;
    if(S != x+y+cin) $display("Test 0: Failed (Expected: %d, Got: %d)", x+y+cin , S);
        else $display("Test 0: Passed (%d + %d +%d = %d)", x,y,cin,S );
    #40;
    x=3;
    y=4;
    #40;
    x=5;
    y =8;
    #40;
    x=5;
    y =8;
    if(S != x+y+cin) $display("Test 1: Failed (Expected: %d, Got: %d)", 16'd200, S);
    else $display("Test 1: Passed (%d + %d +%d = %d)", x,y,cin,S );
    #40;
end
endmodule
