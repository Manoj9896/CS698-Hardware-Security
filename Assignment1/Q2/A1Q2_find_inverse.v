module Find_Inverse (clk,a,b,out,coprime,done);

    input clk;
    input [15:0] a,b;

    output reg [15:0] out;
    output reg coprime,done;

    reg signed [15:0] a0,b0,t0,t,r,q,tmp;
    reg start;

    always @(posedge clk) begin
        if (start==0) begin
            a0 = a;
            b0 = b;
            t0 = 0;
            t = 1;
            q = a0/b0;
            r = a0 - q*b0;
            start = 1;
            done = 0;
        end
        else if (r!=0) begin
            tmp = t0 - q*t;
            t0 = t;
            t = tmp;
            a0 = b0;
            b0 = r;
            q = a0/b0;
            r = a0 - q*b0;
        end
        else begin
            if (b0==1) begin
                coprime <= 1; 
            end
            else begin
                coprime <= 0;
            end

            done <= 1;
            out <= (t+a)%a;
            start <= 0;
        end
        
    end

    initial begin
        start = 0;
        done = 0;
    end
    
endmodule