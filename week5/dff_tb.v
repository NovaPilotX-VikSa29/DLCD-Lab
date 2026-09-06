module TB;
reg clk,in;
wire out;


initial begin $dumpfile("dff_test.vcd"); $dumpvars(0,TB); end
initial clk = 1'b0; always #5 clk =~ clk;



df df_1(clk,in,out);

initial begin 

#0 in =1'b1;
#5 in =1'b0;
#5 in =1'b1;
#5 in =1'b1;
#5 in =1'b0;
#5 in =1'b0;
#5 in =1'b1;
#5 in =1'b1;
#5 in =1'b0;

$finish;
end
initial begin $monitor($time,"clk=%b, in=%b, out=%b", clk,in,out);end

endmodule
