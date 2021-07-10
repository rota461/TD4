
`timescale 1ns / 1ps

module test;
    reg reset = 0;
    reg clk = 0;
    wire [9:0] led;

    cpu a(clk, reset, led);
    
    initial begin
        clk = 0;    
    end

    always #5 clk = !clk;

    initial begin 
        reset = 0;
        repeat(2) @(posedge clk) reset <= 1;
        @(posedge clk) reset <= 0;
    end

    initial begin
        #150 
        $finish;
    end


    initial begin
        $monitor("led=%b", led);
        $dumpfile("cpu_tb.vcd");
        $dumpvars(0, a);
    end

 endmodule
    
