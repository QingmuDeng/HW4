// 32 bit decoder with enable signal
//   enable=0: all output bits are 0
//   enable=1: out[address] is 1, all other outputs are 0
module decoder1to32
(
output[31:0]	out,
input		enable,
input[4:0]	address
);

    assign out = enable<<address; 

endmodule

/*
    Bit shift is the essence of how the above behavorial Verilog constitues a decoder. A left
bit shift is the same concept as multiplying a number by two. When Enable bit is zero, no
matter what you multiply 0 (Enable false) by, the result is still always gonna be zero. However,
when 1 (Enable True) is bit shift to the left, the number N of positions that 1 gets left shift by is
the same as putting everything but the Nth bit high, if we start counting the bit number from zero.

Here are a few examples:

8b'1 << 0 = 8b'00000001
8b'1 << 1 = 8b'00000010
8b'1 << 4 = 8b'00010000
8b'1 << 7 = 8b'10000000
*/

