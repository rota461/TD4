module adder(
    input  [3:0]a, [3:0]b, 
    output reg [3:0] r,
    output co
)
assign {co, r} <= a + b

endmodule
