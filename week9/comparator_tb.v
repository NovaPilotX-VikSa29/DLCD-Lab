`timescale 1ns/1ps

module tb_comparator;

    reg [3:0] A;
    reg [3:0] B;

    wire GT;
    wire EQ;
    wire LT;

    comparator uut(
        .A(A),
        .B(B),
        .GT(GT),
        .EQ(EQ),
        .LT(LT)
    );

    // Create waveform file
    initial begin
        $dumpfile("comparator.vcd");
        $dumpvars(0, tb_comparator);
    end

    initial begin

        A = 4'b0010;
        B = 4'b0001;
        #10;

        A = 4'b0010;
        B = 4'b0010;
        #10;

        A = 4'b0001;
        B = 4'b0010;
        #10;

        A = 4'b1111;
        B = 4'b0101;
        #10;

        $finish;

    end

    initial begin
        $monitor("A=%b B=%b | GT=%b EQ=%b LT=%b",
                  A, B, GT, EQ, LT);
    end

endmodule