module decoder(
    input [3:0] data_input,
    input cflg,
    output reg [1:0] select,
    output reg [3:0] load
);

always @* begin
    case (data_input)
        4'b0000 : begin select <= 2'b00; load <= 4'b0111; end 
        4'b0001 : begin select <= 2'b01; load <= 4'b0111; end 
        4'b0010 : begin select <= 2'b10; load <= 4'b0111; end 
        4'b0011 : begin select <= 2'b11; load <= 4'b0111; end
        4'b0100 : begin select <= 2'b00; load <= 4'b1011; end
        4'b0101 : begin select <= 2'b01; load <= 4'b1011; end
        4'b0111 : begin select <= 2'b11; load <= 4'b1011; end
        4'b1001 : begin select <= 2'b01; load <= 4'b1101; end
        4'b1011 : begin select <= 2'b11; load <= 4'b1101; end
        4'b1110 : begin 
            if(cflg) begin select <= 2'b00; load <= 4'b1111; end
            else     begin select <= 2'b11; load <= 4'b1110; end
        end
        4'b1111 : begin select <= 2'b11; load <= 4'b1110; end
    endcase
end

endmodule

