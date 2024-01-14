`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Create Date: 01/14/2024 10:54:11 AM
// Project Name: twoBitTflopCounter
// Description: An implemention of a 2 bit counter using T flops.
// 
//////////////////////////////////////////////////////////////////////////////////


module twoBitTflopCounter(
    input logic clk,
    input logic rst,
    output logic Qmsb,
    output logic Qlsb
    );
    
    tFlipFlop flopOne(.T(Qlsb),.clk(clk),.rst(rst),.Q(Qmsb));
    tFlipFlop flopTwo(.T(1'b1),.clk(clk),.rst(rst),.Q(Qlsb));
    
endmodule
