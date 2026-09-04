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
    wire w1,w2,w3;

    and2 a1(b,c,w1);
    and2 a2(a,b,w2);
    or2 a3(w1,w2,w3);
    or2 a4(a,w3,d);
endmodule