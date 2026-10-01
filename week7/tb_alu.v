`timescale 1ns/1ps

module alu_tb;

reg[3:0]A;
reg[3:0]B;
reg[1:0]ALU_Sel;
wire[3:0]ALU_Out;

alu uut(
.A(A),
.B(B),
.ALU_Sel(ALU_Sel),
.ALU_Out(ALU_Out)
);

initial begin
$dumpfile("alu.vcd");
$dumpvars(0,alu_tb);
end

initial begin

$display("--------------------------------------------");
$display("A B SEL OPERATION OUTPUT");
$display("--------------------------------------------");

A=4'b0101;B=4'b0011;ALU_Sel=2'b00;
#10;
$display("%b %b %b ADD %b",A,B,ALU_Sel,ALU_Out);

A=4'b0111;B=4'b0110;ALU_Sel=2'b00;
#10;
$display("%b %b %b ADD %b",A,B,ALU_Sel,ALU_Out);

A=4'b1000;B=4'b0011;ALU_Sel=2'b01;
#10;
$display("%b %b %b SUB %b",A,B,ALU_Sel,ALU_Out);

A=4'b0011;B=4'b0101;ALU_Sel=2'b01;
#10;
$display("%b %b %b SUB %b",A,B,ALU_Sel,ALU_Out);

A=4'b1100;B=4'b1010;ALU_Sel=2'b10;
#10;
$display("%b %b %b AND %b",A,B,ALU_Sel,ALU_Out);

A=4'b1111;B=4'b0101;ALU_Sel=2'b10;
#10;
$display("%b %b %b AND %b",A,B,ALU_Sel,ALU_Out);

A=4'b1100;B=4'b1010;ALU_Sel=2'b11;
#10;
$display("%b %b %b OR %b",A,B,ALU_Sel,ALU_Out);

A=4'b0001;B=4'b1000;ALU_Sel=2'b11;
#10;
$display("%b %b %b OR %b",A,B,ALU_Sel,ALU_Out);

$display("--------------------------------------------");

$finish;

end

endmodule