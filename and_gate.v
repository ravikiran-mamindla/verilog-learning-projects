`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.09.2026 00:02:46
// Design Name: 
// Module Name: and_gate
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


//data flow

module and_gate_df(y,a,b );
output y;
input a,b ;
assign y=a&b;
endmodule
//structural 
module and_gate_st(y,a,b );
output y;
input a,b ;
and(y,a,b);
endmodule
//behavioral(if else)
module and_gate_be(y,a,b );
output reg y;
input a,b ;
always@(*)
begin
if (a==1&b==1) begin y=1'b1;end
else 
begin
 y=1'b0; 
 end
end 
endmodule
