module and2(a,b,c);
    input a,b;
    output c;
    assign c = a & b;
endmodule

module or2(a,b,c);
    input a,b;
    output c;
    assign c = a | b;
endmodule

module simple_circuit(
    input a,
    input b,
    input c,
    output d
);
    wire w1;

    and2 a1(b,c,w1);
    or2 a2(a,w1,d);
endmodule