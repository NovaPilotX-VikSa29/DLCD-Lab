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

module xor2(a,b,c);
    input a,b;
    output c;
    assign c = a ^ b;
endmodule

module xnor2(a,b,c);
    input a,b;
    output c;
    assign c = !(a ^ b);
endmodule

module nand2(a,b,c);
    input a,b;
    output c;
    assign c = !(a & b);
endmodule

module nor2(a,b,c);
    input a,b;
    output c;
    assign c = !(a | b);
endmodule
