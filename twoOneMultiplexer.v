`timescale 1ns / 1ps

module twoOneMultiplexer(
    input I0,
    input I1,
    input S,
    input E,
    output Y
    );
    
    assign Y = E&(~S&I0 | S&I1);
    
endmodule