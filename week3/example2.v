module example2(i2, i1, Sum1, Cout1);

input i2;
input [2:0] i1;

output Sum1, Cout1;

wire sum, cout;

fa FA1(i1[2], i1[1], i1[0], sum, cout);

fa FA2(sum, cout, i2, Sum1, Cout1);

endmodule