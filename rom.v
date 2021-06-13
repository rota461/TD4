module ROM(
    input CLK, RST,
    input [3:0] SW,
    /*input A, B, C, D,*/
    output reg[9:0] LEDR
);

always @* begin
    case(SW)
        4'h0: LEDR = 8'b00000000;
        4'h1: LEDR = 8'b00000001;
        4'h2: LEDR = 8'b00000010;
        4'h3: LEDR = 8'b00000011;
        4'h4: LEDR = 8'b00000100;
        4'h5: LEDR = 8'b00000101;
        4'h6: LEDR = 8'b00000110;
        4'h7: LEDR = 8'b00000111;
        4'h8: LEDR = 8'b00001000;
        4'h9: LEDR = 8'b00001001;
        4'hA: LEDR = 8'b00001010;
        4'hB: LEDR = 8'b00001011;
        4'hC: LEDR = 8'b00001100;
        4'hD: LEDR = 8'b00001101;
        4'hE: LEDR = 8'b00001110;
        4'hF: LEDR = 8'b00001111;
    endcase
end

endmodule




    


   
