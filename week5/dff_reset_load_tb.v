module TB;

reg clk,in,load,reset;
wire out;

initial begin
    $dumpfile("dff_reset_load.vcd");
    $dumpvars(0,TB);
end

initial clk = 1'b0;
always #5 clk = ~clk;

df_reset_load df_1(clk,in,load,reset,out);

initial begin

    #0  reset=1'b0; load=1'b1; in=1'b1;
    #5  reset=1'b1; load=1'b1; in=1'b0;
    #5  reset=1'b1; load=1'b0; in=1'b1;
    #5  reset=1'b1; load=1'b1; in=1'b1;
    #5  reset=1'b1; load=1'b0; in=1'b0;
    #5  reset=1'b0; load=1'b0; in=1'b1;
    #5  reset=1'b1; load=1'b0; in=1'b0;
    #5  reset=1'b1; load=1'b1; in=1'b0;
    #5  reset=1'b1; load=1'b0; in=1'b1;

    $finish;

end

initial begin
    $monitor($time," clk=%b, in=%b, load=%b, reset=%b, out=%b",
             clk,in,load,reset,out);
end

endmodule