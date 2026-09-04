module tb_example2;
reg i2;
reg [2:0] i1;

wire Sum1, Cout1;

example2 E1(i2, i1, Sum1, Cout1);

initial

begin

    $dumpfile("example2.vcd");

    $dumpvars(0, tb_example2);

    $monitor($time,
             " i2=%b, i1=%b, Sum1=%b, Cout1=%b",
             i2, i1, Sum1, Cout1);

    #0  i2=0; i1=3'b000;
    #20 i2=0; i1=3'b001;
    #20 i2=0; i1=3'b010;
    #20 i2=0; i1=3'b011;
    #20 i2=0; i1=3'b100;
    #20 i2=0; i1=3'b101;
    #20 i2=0; i1=3'b110;
    #20 i2=0; i1=3'b111;

    #20 i2=1; i1=3'b000;
    #20 i2=1; i1=3'b001;
    #20 i2=1; i1=3'b010;
    #20 i2=1; i1=3'b011;
    #20 i2=1; i1=3'b100;
    #20 i2=1; i1=3'b101;
    #20 i2=1; i1=3'b110;
    #20 i2=1; i1=3'b111;

    #20 $finish;

end
endmodule