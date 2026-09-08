module resettable_dff(input clk, in, reset, output out);

reg df_out;
wire d_in;

assign d_in = in & ~reset;

always@(posedge clk)
    df_out <= d_in;

assign out = df_out;

endmodule