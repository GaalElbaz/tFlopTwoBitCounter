`timescale 1ns / 1ps

module tbCounter();

    logic clk,rst,Qmsb,Qlsb;
    twoBitTflopCounter(.clk(clk), .rst(rst),.Qmsb(Qmsb), .Qlsb(Qlsb));
    
    always #20 clk = ~clk;
    
    initial begin
        clk = 1'b0;
        rst = 1'b0;
        #5 rst = 1'b1;
        #5 rst = 1'b0;
        #300
        $finish
    end
endmodule
