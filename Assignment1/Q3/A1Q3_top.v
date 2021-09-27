
// we have assumed fixed m = 8 for this case i.e. 8 bit number

`include "A1Q3_GKM.v"

module GKM_test;

    reg [7:0] A,B;
    

    wire [15:0] C;
    

    Karatsuba_multipliers_ECC test(A,B,C);

    initial begin
        $monitor("A = %d, B = %d,  C = %d",A,B,C);
        A=150;B=160;
        #10
        A=56;B=78;
        #10
        A=189;B=167;
        #10
        A=222;B=32;
        #10
        A=190;B=180;        
        #10
        $finish;
        
    end
    
endmodule