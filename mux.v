// Deliverable 4
module mux32to1by1
(
output      out,
input[4:0]  address,
input[31:0] inputs
);

    assign out = inputs[address];

endmodule


// Deliverable 5
module mux32to1by32
(
output[31:0]  out,
input[4:0]    address,
input[31:0]   in
);

    wire[31:0] mux[31:0];			// Create a 2D array of wires

    genvar index;
    generate
        for(index=0; index<32; index=index+1)begin: wire_array
            assign mux[index] = in[index];
        end
    endgenerate

    // assign mux[0] = in[0];		// Connect the sources of the array
    // // Repeat 31 times...
    assign out = mux[address];	// Connect the output of the array
endmodule
