module counter(
    input clk,rst,load,
    input [3:0] di,
    output reg [3:0] qd
);

always @(posedge clk) begin
    if(rst | di == 4'b1111)
        qd <= 4'b0000;
    else if(!load)
        qd <= di;
    else 
        qd <= qd + 1;
end

endmodule
