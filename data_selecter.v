module data_selector(
    input [3:0] a,b,out,
    input [1:0] select,
    output reg [3:0] qd
);

always @* begin
    case (select)
        2'b00 : qd <= a;
        2'b01 : qd <= b;
        2'b10 : qd <= out;
        2'b11 : qd <= 4'b0000;
    endcase
end

endmodule
