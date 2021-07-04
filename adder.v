module adder(
    input [3:0] a, 
    input [3:0] b,
    output [3:0] r,
    output co
);
assign {co, r} = a + b;

endmodule
