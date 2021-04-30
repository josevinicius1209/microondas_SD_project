module contador_0_9 (clk, enable, out, endout);
    input clk , enable;
    output reg [3:0] out;
    output reg endout;

    initial begin
        out<=4'b0000;
        endout<=1'b0;
    end

    always@(posedge clk && enable) begin
        out <= out + 4'b0001;
        endout <= 1'b0; 
        if(out==4'b1001)begin
            endout<=1'b1;
            out<=4'b0000;
        end

    end
    
endmodule
