module register(
    input clk,rst,load,
    input [3:0] d,
    output reg[3:0] qd,
);

always @(posedge clk) begin
    if(rst)
        qd <= 4'b0;
    else if(!load)
        qd <= d;
end

endmodule
