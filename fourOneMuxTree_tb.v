`timescale 1ns / 1ps

module fourOneMuxTree_tb();

    reg I0,I1,I2,I3,S0,S1;
    wire Y;
    
    fourOneMuxTree utt(I0,I1,I2,I3,S0,S1,Y);
    initial begin
    
        S0 = 0; S1 = 0;
        I0 = 1; I1 = 0; I2 = 0; I3 = 0;
        #10 $display("S1=%b S0=%b | I0=%b I1=%b I2=%b I3=%b | Y=%b",S1,S0,I0,I1,I2,I3,Y);

        S0 = 1; S1 = 0;
        I0 = 0; I1 = 1; I2 = 0; I3 = 0;
        #10 $display("S1=%b S0=%b | I0=%b I1=%b I2=%b I3=%b | Y=%b",S1,S0,I0,I1,I2,I3,Y);

        S0 = 0; S1 = 1;
        I0 = 0; I1 = 0; I2 = 1; I3 = 0;
        #10 $display("S1=%b S0=%b | I0=%b I1=%b I2=%b I3=%b | Y=%b",S1,S0,I0,I1,I2,I3,Y);

        S0 = 1; S1 = 1;
        I0 = 0; I1 = 0; I2 = 0; I3 = 1;
        #10 $display("S1=%b S0=%b | I0=%b I1=%b I2=%b I3=%b | Y=%b",S1,S0,I0,I1,I2,I3,Y);

        S0 = 0; S1 = 0;
        I0 = 0; I1 = 0; I2 = 0; I3 = 0;
        #10 $display("S1=%b S0=%b | I0=%b I1=%b I2=%b I3=%b | Y=%b",S1,S0,I0,I1,I2,I3,Y);

        S0 = 1; S1 = 0;
        I0 = 1; I1 = 1; I2 = 1; I3 = 1;
        #10 $display("S1=%b S0=%b | I0=%b I1=%b I2=%b I3=%b | Y=%b",S1,S0,I0,I1,I2,I3,Y);
        
    end
endmodule
