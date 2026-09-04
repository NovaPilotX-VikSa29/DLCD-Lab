`timescale 1ns/1ps

module tb_simple_circuit;
    wire d;
    reg a, b, c;
    simple_circuit M1 (a, b, c, d); 

    initial begin
        $dumpfile("simple_circuit.vcd");
        $dumpvars(1, tb_simple_circuit);

        #000 a = 1'b0; b = 1'b0; c = 1'b0;
        #100 a = 1'b0; b = 1'b0; c = 1'b1;
        #100 a = 1'b0; b = 1'b1; c = 1'b0;
        #100 a = 1'b0; b = 1'b1; c = 1'b1;
        #100 a = 1'b1; b = 1'b0; c = 1'b0;
        #100 a = 1'b1; b = 1'b0; c = 1'b1;
        #100 a = 1'b1; b = 1'b1; c = 1'b0;
        #100 a = 1'b1; b = 1'b1; c = 1'b1;
        #100 $finish;
    end

    initial begin
        $monitor($time," a = %b, b = %b, c = %b, d = %b", a, b, c, d);
    end

endmodule