
`include "A1Q2_find_inverse.v"

module Testing_module;

    reg [15:0] a,b;
    reg clk;
    wire done,coprime;
    wire [15:0] out;
    reg [3:0] count;
    reg [15:0] nums1[0:9],nums2[0:9];

    Find_Inverse test(clk,a,b,out,coprime,done);

    always @(negedge clk) begin
        
        if(done==1) begin
            $display("time=%d, Prime Number =%d, coprime=%d, Inverse of %d = %d",$time,a,coprime,b,out);
            
            count = count+1;

            if(count == 10) begin
                $finish;
            end
            else begin
                a = nums1[count];
                b = nums2[count];
            end
        end

    end

    initial begin
        forever begin
            clk = 0;
            #5
            clk = 1;
            #5
            clk = 0;
        end
    end

    initial begin
        count = 0;
        nums1[0] = 103;
        nums2[0] = 101;
        
        nums1[1] = 29;
        nums2[1] = 23;

        nums1[2] = 37;
        nums2[2] = 19;

        nums1[3] = 47;
        nums2[3] = 31;

        nums1[4] = 199;
        nums2[4] = 173;

        nums1[5] = 233;
        nums2[5] = 181;

        nums1[6] = 227;
        nums2[6] = 127;

        nums1[7] = 241;
        nums2[7] = 60;

        nums1[8] = 151;
        nums2[8] = 41;

        nums1[9] = 139;
        nums2[9] = 107;

        a = nums1[0];
        b = nums2[0];

    end

    
endmodule