module df_reset_load(input clk, in, load, reset, output out);

reg df_out;
reg mux_out;

always@(*) begin
    if(load)
        mux_out = in;
    else
        mux_out = df_out;
end

always@(posedge clk)
    df_out <= mux_out & reset;

assign out = df_out;

endmodule