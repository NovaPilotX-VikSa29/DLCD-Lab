module TB;
reg A,B,S;
wire X;

initial
begin
    $dumpfile("MUX2_test.vcd");
    $dumpvars(0,TB);
    
    // This line prints the variables to the console whenever they change
    $monitor("Time = %2t | S (Select) = %b | A (i0) = %b | B (i1) = %b | X (Out) = %b", $time, S, A, B, X);
end

mux2 newMUX(.i0(A), .i1(B), .j(S), .o(X));

initial
begin
    S = 1'b0; A = 1'b0; B = 1'b0;
    
    #5 S = 1'b0; A = 1'b0; B = 1'b1;
    
    #5 S = 1'b0; A = 1'b1; B = 1'b0;
    
    #5 S = 1'b0; A = 1'b1; B = 1'b1;
    
    #5 S = 1'b1; A = 1'b0; B = 1'b0;
    
    #5 S = 1'b1; A = 1'b0; B = 1'b1;
    
    #5 S = 1'b1; A = 1'b1; B = 1'b0;
    
    #5 S=1'b1;   A = 1'b1; B = 1'b1;
    
    // Add a small delay and $finish to gracefully end the simulation
    #5 $finish;
end

endmodule