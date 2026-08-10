`timescale 1ns/1ps

module jk_flipflop_tb;

reg J;
reg K;
reg clk;
wire Q;

jk_flipflop uut (
    .J(J),
    .K(K),
    .clk(clk),
    .Q(Q)
);

// Clock generation
always #5 clk = ~clk;

initial begin
    $dumpfile("jk_flipflop.vcd");
    $dumpvars(0, jk_flipflop_tb);

    $monitor("Time=%0t | J=%b K=%b | Q=%b",
             $time, J, K, Q);

    clk = 0;
    J = 0;
    K = 0;

    #10;

    // No Change
    J = 0;
    K = 0;
    #10;

    // Set
    J = 1;
    K = 0;
    #10;

    // Reset
    J = 0;
    K = 1;
    #10;

    // Toggle
    J = 1;
    K = 1;
    #10;

    // Toggle again
    J = 1;
    K = 1;
    #10;

    $finish;
end

endmodule