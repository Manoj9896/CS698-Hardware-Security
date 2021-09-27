`include "A1Q1B_SBOX.v"

module Present_test_module;

    reg [3:0] in;
    wire [3:0] out;

    Present_S_Box test(in,out);

    initial begin
        $monitor("Present S-Box Input = %d, Output = %d",in,out);
        in = 0;
        #10
        in = 1;
        #10
        in = 2;
        #10
        in = 3;
        #10
        in = 4;
        #10
        in = 5;
        #10
        in = 6;
        #10
        in = 7;
        #10
        in = 8;
        #10
        in = 9;
        #10
        in = 10;
        #10
        in = 11;
        #10
        in = 12;
        #10
        in = 13;
        #10
        in = 14;
        #10
        in = 15;
        #10
        $finish;
    end
    
    
endmodule