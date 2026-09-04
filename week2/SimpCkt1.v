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

module not2(a,c);
    input a;
    output c;
    assign c = !a;
endmodule

module simple_circuit(
    input a,
    input b,
    input c,
    output d,
    output e
);
    wire w1;

    and2 a1(a,b,w1);
    not2 a2(c,e);
    or2 a3(w1,e,d);
endmodule