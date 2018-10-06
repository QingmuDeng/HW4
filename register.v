// Single-bit D Flip-Flop with enable
//   Positive edge triggered
module register
(
output reg	q,
input		d,
input		wrenable,
input		clk
);

    always @(posedge clk) begin
        if(wrenable) begin
            q <= d;
        end
    end
endmodule

// Deliverable 2
module register32
(
output reg [31:0] q,
input[31:0]       d,
input             wrenable,
input             clk
);
    always @(posedge clk) begin
        if(wrenable) begin
            q <= d;
        end
    end
endmodule

// Deliverable 3
module register32zero
(
output reg[31:0]  q,
input[31:0]       d,
input             wrenable,
input             clk
);
    always @(posedge clk) begin
        q <= 32'h00000000;
    end
endmodule
