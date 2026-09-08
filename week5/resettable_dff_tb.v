module TB;

reg clk,in,reset;
wire out;

initial begin
    $dumpfile("resettable_dff.vcd");
    $dumpvars(0,TB);
end

initial clk = 1'b0;
always #5 clk = ~clk;

resettable_dff df_1(clk,in,reset,out);

initial begin

    #0  reset=1'b1; in=1'b1;
    #5  reset=1'b0; in=1'b0;
    #5  reset=1'b0; in=1'b1;
    #5  reset=1'b1; in=1'b0;
    #5  reset=1'b0; in=1'b1;
    #5  reset=1'b0; in=1'b0;
    #5  reset=1'b1; in=1'b1;
    #5  reset=1'b0; in=1'b1;
    #5  reset=1'b0; in=1'b0;

    $finish;

end

initial begin
    $monitor($time," clk=%b, in=%b, reset=%b, out=%b",
             clk,in,reset,out);
end

endmodule