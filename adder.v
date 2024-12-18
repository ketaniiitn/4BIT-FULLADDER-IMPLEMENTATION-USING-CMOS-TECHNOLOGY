module full_adder_4bit (
    input [3:0] A,        // 4-bit input A
    input [3:0] B,        // 4-bit input B
    input Cin,            // Carry input
    output [3:0] Sum,     // 4-bit sum output
    output Cout           // Carry output
);

    wire C1, C2, C3;      // Intermediate carry wires

    full_adder FA0 (A[0], B[0], Cin, Sum[0], C1);
    full_adder FA1 (A[1], B[1], C1, Sum[1], C2);
    full_adder FA2 (A[2], B[2], C2, Sum[2], C3);
    full_adder FA3 (A[3], B[3], C3, Sum[3], Cout);

endmodule

// 1-bit Full Adder
module full_adder (
    input A,              // Input A
    input B,              // Input B
    input Cin,            // Carry input
    output Sum,           // Sum output
    output Cout           // Carry output
);

    assign Sum = A ^ B ^ Cin;       // Sum = A XOR B XOR Cin
    assign Cout = (A & B) | (Cin & (A ^ B));  // Carry = (A AND B) OR (Cin AND (A XOR B))

endmodule
