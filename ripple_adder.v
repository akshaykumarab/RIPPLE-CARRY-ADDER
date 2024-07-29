`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:    00:38:39 05/11/24
// Design Name:    
// Module Name:    ripple_adder
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
module ripple_adder(a,b, cin, sum, cout);
    input [3:0] a,b;
    input cin;
    output [3:0] sum;
    output cout;
	 wire c1,c2,c3;
	 fa a1(a[0],b[0],cin,sum[0],c1);
	 fa a2(a[1],b[1],c1,sum[1],c2);
	 fa a3(a[2],b[2],c2,sum[2],c3);
	 fa a4(a[3],b[3],c3,sum[3],cout);



endmodule
