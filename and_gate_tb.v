`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.09.2026 00:06:11
// Design Name: 
// Module Name: and_gate_tb
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


module and_gate_tb;
wire y_df;
wire y_st;
wire y_be;
reg a,b;
//dataflow 
and_gate_df dut_df(
.a(a),
.b(b),
.y(y_df));
//strutural
and_gate_st dut_st(
.a(a),
.b(b),
.y(y_st));
//behavioural
and_gate_be dut_be(
.a(a),
.b(b),
.y(y_be));
initial begin
a=0; b=0; #10;
a=0; b=1; #10;
a=1; b=0; #10;
a=1; b=1; #10;
$finish;
end 
endmodule
