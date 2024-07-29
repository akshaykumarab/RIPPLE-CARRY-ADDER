`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:    00:26:39 05/11/24
// Design Name:    
// Module Name:    fa
// Project Name:   
// Target Device:  
// Tool versions:  
// Description:
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////
module fa(a,b,c, sum,carry);
    input a,b,c;
    output sum,carry;
	 wire s,c1,c2;
	 ha h1(a,b,s,c1);
	 ha h2(s,c,sum,c2);
	 or o1(carry,c1,c2);




endmodule
