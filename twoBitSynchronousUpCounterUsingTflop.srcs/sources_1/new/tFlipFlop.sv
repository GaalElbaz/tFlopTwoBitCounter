`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date: 01/14/2024 10:52:55 AM
// Project Name: tFlipFlop
// Description: 
// A T Flip-Flop, or Toggle Flip-Flop, is a digital circuit element used in sequential logic circuits.
// It is a type of flip-flop that toggles its output state based on a clock signal and 
// an input known as the "toggle" or "T" input.
//////////////////////////////////////////////////////////////////////////////////


module tFlipFlop(
    input logic T,
    input logic clk,
    input logic rst,
    output logic Q
    );

    
    always_ff @ (posedge clk, posedge rst) begin
        if(rst == 1'b1) begin
            Q <= 0;
        end
        else case(T) 
            1'b0: Q <= Q;
            1'b1: Q <= ~Q;
        endcase
    end
endmodule
