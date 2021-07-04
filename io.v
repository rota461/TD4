module io(
    input clk,rst,load,
    input [3:0] di,
    output reg [9:0] LEDR
);

always @(posedge clk) begin
    if(rst)
        LEDR = 4'b0000;
    else if(!load)
        LEDR = di;
end

endmodule
