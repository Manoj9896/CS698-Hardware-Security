module Present_S_Box (in,out);
    input [3:0] in;
    output reg [3:0] out;

    always @(in) begin

        case (in)
            0   :   out = 12; 
            1   :   out = 5; 
            2   :   out = 6; 
            3   :   out = 11; 
            4   :   out = 9; 
            5   :   out = 0; 
            6   :   out = 10; 
            7   :   out = 13; 
            8   :   out = 3; 
            9   :   out = 14; 
            10  :   out = 15; 
            11  :   out = 8; 
            12  :   out = 4; 
            13  :   out = 7; 
            14  :   out = 1; 
            default: out = 2;
        endcase
        
    end 
    
endmodule