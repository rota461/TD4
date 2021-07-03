module io(
    input clk,rst,load
    input [3:0] di,
    output reg [3:0] LEDR,
);

always @(posedge ckl) begin
    if(rst)
        LEDR <= 4'b0000;
    else if(!load)
        LEDR <= di;
end

endmodule
