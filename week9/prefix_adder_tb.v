`timescale 1ns/1ps

module tb_prefix_adder;

    reg [3:0] A;
    reg [3:0] B;
    reg Cin;

    wire [3:0] Sum;
    wire Cout;

    prefix_adder uut(
        .A(A),
        .B(B),
        .Cin(Cin),
        .Sum(Sum),
        .Cout(Cout)
    );

    // Create waveform file
    initial begin
        $dumpfile("prefix_adder.vcd");
        $dumpvars(0, tb_prefix_adder);
    end

    initial begin

        A = 4'b0001;
        B = 4'b0010;
        Cin = 0;
        #10;

        A = 4'b0101;
        B = 4'b0011;
        Cin = 0;
        #10;

        A = 4'b1111;
        B = 4'b0001;
        Cin = 0;
        #10;

        A = 4'b1010;
        B = 4'b0101;
        Cin = 1;
        #10;

        A = 4'b1111;
        B = 4'b1111;
        Cin = 1;
        #10;

        $finish;

    end

    initial begin
        $monitor("A=%b B=%b Cin=%b | Sum=%b Cout=%b",
                  A, B, Cin, Sum, Cout);
    end

endmodule