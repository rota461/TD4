module rom(
    input clk, rst,
    input [3:0] adr,
    output reg[7:0] qd
);

always @* begin
    case(adr)
        4'b0000: qd <= 8'b10110011;
        4'b0001: qd <= 8'b10110110;
        4'b0010: qd <= 8'b10111100;
        4'b0011: qd <= 8'b10111000;
        4'b0100: qd <= 8'b10111000;
        4'b0101: qd <= 8'b10111100;
        4'b0110: qd <= 8'b10110110;
        4'b0111: qd <= 8'b10110011;
        4'b1000: qd <= 8'b10110001;
        4'b1001: qd <= 8'b11110000;
    endcase
end

endmodule  
