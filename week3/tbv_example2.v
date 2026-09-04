`define TESTVECS 16
module tbv_example2;
reg i2;
reg [2:0] i1;
wire Sum1, Cout1;
reg [3:0] test_vecs [0:15];
integer i;
example2 E1(i2, i1, Sum1, Cout1);
initial
begin
    i2 = 0;
    i1 = 3'b000;
    for(i = 0; i < `TESTVECS; i = i + 1)
    begin
        #20 {i2, i1} = test_vecs[i];
    end
    #20 $finish;
end
initial
begin
    test_vecs[0]  = 4'b0000;
    test_vecs[1]  = 4'b0001;
    test_vecs[2]  = 4'b0010;
    test_vecs[3]  = 4'b0011;
    test_vecs[4]  = 4'b0100;
    test_vecs[5]  = 4'b0101;
    test_vecs[6]  = 4'b0110;
    test_vecs[7]  = 4'b0111;
    test_vecs[8]  = 4'b1000;
    test_vecs[9]  = 4'b1001;
    test_vecs[10] = 4'b1010;
    test_vecs[11] = 4'b1011;
    test_vecs[12] = 4'b1100;
    test_vecs[13] = 4'b1101;
    test_vecs[14] = 4'b1110;
    test_vecs[15] = 4'b1111;

end
initial
begin
    $monitor($time," i2=%b, i1=%b, Sum1=%b, Cout1=%b",i2, i1, Sum1, Cout1);
end
initial
begin

    $dumpfile("example2.vcd");
    $dumpvars(0, tbv_example2);

end
endmodule