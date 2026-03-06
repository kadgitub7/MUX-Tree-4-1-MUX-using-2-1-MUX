`timescale 1ns / 1ps

module fourOneMuxTree(
    input I0,
    input I1,
    input I2,
    input I3,
    input S0,
    input S1,
    output Y
    );
    
    wire i1,i2;
    
    twoOneMultiplexer(I0,I1,S0,1'b1,i1);
    twoOneMultiplexer(I2,I3,S0,1'b1,i2);
    twoOneMultiplexer(i1,i2,S1,1'b1,Y);
endmodule
