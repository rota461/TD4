module clock_gen_1hz(
    input CLK, RST,
    output CLK_OUT
);

reg [25:0] cnt;

always @(posedge CLK) begin
    if(RST)
        cnt <= 26'b0;
    else if(CLK_OUT)
        cnt <= 26'b0;
    else
        cnt <= cnt + 26'b1;
 end

 assign CLK_OUT = (cnt==26'd49_999_999);


 endmodule
