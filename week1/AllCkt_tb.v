module tb;

    reg a, b;
    wire d1, d2, d3, d4, d5, d6, d7;

    and2 C1(a, b, d1);
    or2 C2(a, b, d2);
    xor2 C3(a, b, d3);
    xnor2 C4(a, b, d4);
    nand2 C5(a, b, d5);
    nor2 C6(a, b, d6);
    not2 C7(a, d7);

    initial begin
        $dumpfile("wave.vcd");
        $dumpvars(1, tb);

        #000 a = 0; b = 0;
        #100 a = 0; b = 1; 
        #100 a = 1; b = 0; 
        #100 a = 1; b = 1;  
        #100 $finish;
    end

    initial begin
        $monitor($time,
                 " a=%b b=%b | and2=%b | or2=%b | xor2=%b | xnor2=%b | nand2=%b | nor2=%b | not2=%b",
                 a, b, d1, d2, d3, d4, d5, d6, d7);
    end

endmodule