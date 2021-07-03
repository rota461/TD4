module cpu(
    input CLK, RST
);

wire clk
wire [3:0] addr;
wire [7:0] data_bus;
wire cflg;
wire [1:0] select;
wire [3:0] load;
wire [3:0] a;
wire [3:0] b;
wire [3:0] out;
wire [3:0] selector_out;
wire [3:0] adder_out;

clock_gen_1hz clock_gen(
    .CLK(CLK),
    .RST(RST),
    .CLK_OUT(clk)
);

rom rom(
    .clk(clk), 
    .rst(RST), 
    .addr(addr),
    .qd(data_bus)
);

cnt cnt(
    .clk(clk), 
    .rst(RST),
    .load(load[3])
    .di(adder_out),
    .qd(addr)
);

decoder decoder(
    .data_input(data_bus[7:4]),
    .cflg(cflg),
    .select(select),
    .load(load)
);

data_selector data_selector(
    .a(a),
    .b(b),
    .select(select),
    .out(out),
    .qd(selector_out)
 );

register a_reg(
    .clk(clk),
    .rst(RST),
    .load(load[0]),
    .d(adder_out),
    .qd(a)
);

register b_reg(
    .clk(clk),
    .rst(RST),
    .load(load[1]),
    .d(adder_out),
    .qd(b)
);

io out(
    .clk(clk),
    .rst(RST),
    .load(load[2]),
    .d(adder_out),
);

adder adder(
    .a(selector_out),
    .b(data_bus[3:0]),
    .r(adder_out),
    .co(cflg)
);

endmodule
