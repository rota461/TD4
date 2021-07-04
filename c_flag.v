module cflg(
    input clk,rst,
    input ci,
    output reg q
);

always @(posedge clk) begin
    if(rst)
        q <= 1'b0;
    else
        q <= ci;
end

endmodule
